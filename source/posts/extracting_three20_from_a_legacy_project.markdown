---
title: Extracting Three20 From a Legacy Project
date: 2014/7/1
published: true
---

Back in 2009, [Joe Hewitt](https://twitter.com/joehewitt) announced the [Three20](http://joehewitt.com/2009/03/23/the-three20-project) project. It was factored out of the Facebook app as a set of UI Components and utility classes. It contained the common tools that would get you 80% there and had enough sample/demo code to make even that 80% mostly a matter of cutting and pasting.

Nowadays, my feelings for Three20 are mixed. Yes, it was a major part of my earliest experiences with iOS programming and it helped me get going quickly. Yes, it had a great community with lots of people actively using it. Unfortunately, it wasn't just a thin wrapper on top of the iOS APIs. It was a framework that had it's own abstractions and patterns...making it harder for me to learn how the iOS APIs actually worked.

You have to remember that the iOS developer community was a lot less mature than it is now. We didn't have the rich set of libraries that are now available by just adding an entry to your `Pods` file. While some developers came to this from an OS X background, many others were coming from making web apps. To find a library like Three20, that had patterns to solve most of the "hard" problems of making an app was, well, invaluable.

## Three20 must go

One of my projects has been moving along since 2009. We've white labeled it a few dozen times with constant updates to fix minor issues or add new features. In all that time, we never committed to doing larger overhauls because (a) it just worked and (b) I was pretty busy with other jobs.

In early 2013, I decided that it was time to get rid of Three20 and put a bit of effort into the code to bring it up to date. Three20 had changed from the thing that helped us release a build quickly to the thing that was holding us back. The iOS/Obj-C community had come so far in the meantime that we had great  libraries to use, and I had also grown quite a bit as a developer. We now had blocks, `UIAppearance`, [AFNetworking](http://afnetworking.com), [CocoaPods](http://cocoapods.org), and new versions of both iOS and Xcode.

There was also the fact that Three20 was quite the behemoth. It encompassed several inter-related subprojects and included some python scripts to integrate it with your Xcode project. This was bringing in **hundreds** of files that I didn't need or want. It was built in the age of iOS 2 and 3, and we were now targeting iOS 5 and later. It also had a few __quirks__ that were deal breakers...the worst being a bug that only happened if I used CLANG, causing me to pin the build to use GCC.

##General Steps

I wrote this months after doing the actual refactoring, but recently heard some other developers talking about how to get rid of Three20, so figured this may be helpful to at least a few other people.

**NOTE: This is not a guide. These are just the steps I took. Your code is unique, like a snowflake.**

### Step 1: get rid of `TTURLNavigation`

`TTURLNavigation` was used to create and show view controllers using URLs. So, to show the list of photo galleries I'd navigate to `tt://photos`, or `tt://photos/1` if I wanted to view a specific gallery. I was a noob who was used to web apps, so this was comforting.

`TTURLNavigation` had it's hands all over our code, but it was a good place to start because it didn't involve replacing Three20 with another library, just writing a bit of custom code and a shim.

We had two different ways in which we used URL navigation within the app.

1. Internal navigation between view controllers
2. Runtime configuration of a tab bar that used URLs to config what happened for each tab

Internal navigation was pretty easy, I just did a global search for something like "tt://teams" and manually created a `TeamsViewController` then presented it.

For the `UITabBarController`, I just used an `if` statement to build the tab bar controller based on an array of URLs. Yes, this is not very sexy. I refactored this again after Three20 was fully gone. Here's what that looked like.

~~~ objc
NSArray *urls = [self loadTabBarUrlsFromConfigFile];
NSMutableArray *viewControllers = [@[] mutableCopy];

for(NSString *url in urls) {
   if ([URL isEqualToString:@"tt://teams"]) {
	   [viewControllers addObject:[[TeamsViewController alloc] init]];
   } else if ([URL isEqualToString:@"tt://photos"]) {
	   [viewControllers addObject:[[PhotoGalleriesController alloc] init]];
   } else if ([URL isEqualToString:@"tt://links"]) {
	   [viewControllers addObject:[[LinksViewController alloc] init]];
   }
   //
   //.. more controllers
   //
   else {
	   [NSException raise:@"Invalid TabController URL" format:@"URL %@ is invalid", URL];
   }
}
tabBarController.viewControllers = viewControllers;
~~~

### Step 2: Change all non-table controllers to use a plain UIViewController

Some of our controllers were extended from a `TTBaseViewController` to take advantage of who knows what. Other controllers had `#import "Three20/Three20.h"` even though they never used any actual functionality. Chalk this up to my inexperience or possibly being drunk at the time.

### Step 3: Look for tables that use Three20 Data Sources

This was the single largest step. At this point I created a Storyboard and merged a few XIB files into it for custom cells. This also allowed me to use prototype cells for the simple stuff.

Start with the easy...tables with static data. This was just a matter of merging in the code from the Three20 data source into the table view.

For the tables that pulled in data from an external API, I refactored to use AFNetworking and blocks. For the table cells that used the Three20 remote image loading, use the `UIImageView+AFNetworking.h` category that comes with AFNetworking.

We also had a few table views that used pull to refresh. We were targetting iOS5 and up at the time, so I could not use a `UIRefreshControl`. Instead, I used the wonderful [SVPullToRefresh](https://github.com/samvermette/SVPullToRefresh) library by Sam Vermette.

### Step 4: Remove any use of `TTStyleSheet` and `TTSTYLEVAR` macros

TTStyle is another one of the things that is deeply embedded into everything Three20, so this is best left to a later stage. I replaced this with a category called `UIColor+AppColors` so I could easily handle things like setting up my tables using `[UIColor tableSeparatorColor]`. I also used a Style Controller to setup app wide styles using `UIAppearance`.

### Step 5: replace the photo browser

I just used [MWPhotoBrowser](https://github.com/mwaterfall/MWPhotoBrowser). It was a matter of about 3 steps that were each quite simple on thier own.

### Step 6: Final Sweep, aka "Jump"

With no large issues remaining, this was the point where I removed Three20 from the project and spent a bit of time fixing compiler errors until it worked.



##What did I end up with?

- A project that contained several hundred fewer source files.
- An app that was ~1.5 MB smaller.
- Code that was easier to read and refactor even more.
- Code that would now play nice with any number of third party libraries.
