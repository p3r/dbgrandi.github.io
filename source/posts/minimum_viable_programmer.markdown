---
title: Minimum Viable Programmer
date: 2015/9/6
published: false
---

I’ve been working with the [Coalition For Queens](http://www.c4q.nyc) (C4Q) this summer, helping to guide the curriculum they use to train new iOS developers.

C4Q teaches mobile development to adults who are underrepresented and underserved in the tech industry. Their goal is to take someone who has never programmed and prepare them for a job as a junior developer. It’s an intense course that meets 6 days a week for 9 months. The application process is competitive because, if accepted, it’s completely free.

We were asked to describe our requirements for a *Minimum Viable Programmer*. These are what each of us  would expect from a junior developer. This turned out to be a fun exercise that brought out strong views from everybody.

I wrote up a lot of notes for that meeting, and figured it would be a nice thing to share with all of you lovely people. It also seems to be a good bookend against my last post about [what makes for a great programmer](http://dbgrandi.github.io/good_great_10x/).

## General skills a developer should have

### | You can use simple git commands

Every team I've worked with in the last 5 years has used `git`, with most using Github. 

You should be able to add, commit, push, pull, branch, and merge. Knowing how to fork code, create a branch, and send a pull-request are vital to being able to contribute to a team.

### | You know how to ask good questions

Seriously. When a colleague comes to me with a question, my first response is almost always “What have you tried so far?" or “What did Google

I often point people to [How To Ask Questions The Smart Way](http://www.catb.org/esr/faqs/smart-questions.html) as a guide to help maximize the odds of getting a useful response to your question. [Orta](https://twitter.com/orta) recommended [How do I ask a good question?](http://stackoverflow.com/help/how-to-ask) as another resource.

The skills you use to ask a good question also come in useful when filing a bug report.

### | You are curious about how things work

There is a difference between the developer who does a copy-paste from StackOverflow and the developer who wants to understand the code before deciding if it is the right solution in a specific context.

This is a double edged sword for the beginner and expert alike. Sometimes, I just want to get something shipped and I don’t care how it works. However, shipping something that I don’t understand is a form of creating technical debt. Given the time, I’d like to understand any code that goes into my app.

## iOS specific skills a developer should have

I had a **long** list of specific things relating to Xcode and iOS. They were very tedious things like, “know how to add a new file to an Xcode project.” I’ve shortened that list to a general description here.

*I expect you to be able to start a new project, write some classes to download a bit of JSON via HTTP, and use the parsed JSON to present some data in a `UITableView`.*

If you can do that, and can discuss the choices you made to get your app built, that encapsulates most of what you’ll need to know.

Two things I’d love you to know that fall outside of that description...

  - Understand that you can do almost anything in either Interface Builder or in code, and a bit about what the tradeoffs are.
  - Know that sometimes, you just have to restart Xcode. :)

## Other Indicators: Above-and-Beyond things

These are things that I expect to see in any mid/senior level developer, so it’s great to see these in junior developers.

### | You have experience with at least one specific iOS API

It doesn’t matter which one, but if you’ve taken a deeper dive into GameKit, StoreKit, CoreAnimation (etc.) then you’ll know a bit about how to learn your way around a new API.

This is important because a large part of developer work involves reading other code and learning how to properly use it.

### | You understand what testing is

...and why you would do it. If you have done any testing, that’s a bonus.

### | You take pride in your tools and developer environment

I love to look at how people work with development tools. I notice when people take the time to customize the environment, learn keyboard shortcuts, and find other dev tools to work with, like [Reveal](http://revealapp.com) or [Dash](https://kapeli.com/dash). It's a little indicator that says, "I'm here to get things done, and I've figured out how to optimize this environment for my own needs."
  
### | You have at least 'dabbled' in another language

The more perspective you have, the easier it becomes to learn new things in programming. Having even the tiniest bit of experience in Ruby, or Javascript, or C# will make things easier in Objective-C.

### | You are always learning

If you read books or blogs, attend meetups or conferences, and watch videos (WWDC videos!), then you are actively learning and growing. Software development is an immense field of study, and it is actively changing every day. There is always more to learn that will help you refine how you work.

Some books that I'd recommend to any new programmer:

- "The Pragmatic Programmer: From Journeyman to Master", by Andrew Hunt and David Thomas
- "The UNIX Philosophy", by Mike Gancarz
- "The Mythical Man-Month", by Fred Brooks
- "The Cathedral and the Bazaar", by Eric S. Raymond
- "The Design of Everyday Things", by Don Norman

## Things I DO NOT expect a junior developer to know

Most of these you can look up or learn when it becomes relevant...which is why I consider them non-essential.

### | Specific details of syntax

I do not expect you to know the specific syntax of methods, classes, blocks, as long as you know where to find them.

I use an IDE because it has autocomplete and snippets. I have Dash on a hotkey. I still have to look up [how to do block syntax](http://fuckingblocksyntax.com) about once a week. I don’t expect you to know all of this.

### | Knowledge of Unix and the command line.

While I think this is a *huge* benefit, I don't think it's required. You can build an iOS app without using the Terminal. Knowledge of UNIX and command line apps has benefits beyond being able to use git directly. One of the big ones being the concept of stringing together small, simple programs to do amazing things (a topic covered in 'The UNIX Philosophy’).

### | Highly custom implementations.

I don't expect you to be able to make a custom gesture recognizer that drives a custom interactive transition for a custom navigation controller.

### | The Objective-C runtime.

You can get a long way without running into this.

### | Interaction of C libraries from Obj-C or Swift

This is another one of those things that you’ll learn when you really need to.

### | Provisioning profiles and all that stuff

You may have gone through this once to get an app on the App Store, but I don’t expect you to know all of the funky issues that appear trying to get apps onto devices or into iTunesConnect.

## We stand on the shoulders of giants

I’m amazed at the volume of things developers know about these days. David Smith recently [measured the number of API elements in iOS](https://david-smith.org/blog/2015/09/03/the-growing-ios-sdk/) and it is just under 13,000. Combine that with understanding  the history of these APIs, the network stack, all the tools we use to support making apps, and it starts to add up.

All this knowledge is about how to builds apps, and the thing I still find the hardest is agreeing on what should be built.