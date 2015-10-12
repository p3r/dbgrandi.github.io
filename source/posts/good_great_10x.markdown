---
title: Good, Great, and 10x
date: 2015/8/18
published: true
---

The other day, I found myself in a conversation about what made a person a great programmer, and figured this is something I should strive to understand. I’d like to think that I'm a good programmer, and understanding what the path to greatness looks like could help me walk it.

So, over the next few days I asked those around me, *”What makes a good programmer?”*

Answers often started out short: **”patience”**, **”perseverance”**, **”creativity”**. While these are good answers, they are traits that could be useful in all kinds of endeavors (e.g. parenting.)

The more interesting answers started to come when I followed up with, *”What's the difference between a good programmer and great programmer?”*

This was the point where people took a bit more time:

### "Having the instinct to know when a solution will not work."

I love this. It combines experience with intuition. Experience will come with time, and intuition is the ability to see patterns in what you are doing and relate it to that experience. I recall reading Malcolm Gladwell's book, [Blink](http://gladwell.com/blink/), a few years ago. He discusses how instinct works and how it can help you or how it can fool you. This is immensely useful when you are debugging or trying to evaluate what *could* happen when you deploy something. I see it being more relevant to my work now than when I first read it, so it may be time to re-read it.

### "Understanding the proper level of abstraction to work at, and building tools to make that level as easy as possible."

This is an incredibly detailed and insightful concept. We build layers of abstraction upon each other. Each of these added layers will hide some  complexity that a user may not need to understand. The trouble is, sometimes you **do** need to understand the complexity. Knowing when that time is allows you to hide complexity that you don’t need to think about and provide a level of simplicity and clarity that will allow you to work in a less encumbered manner. It’s freeing to not have to worry about details that are below your level of abstraction.

### "Not being afraid to throw away code once you understand the problem better."

I once read that the moment you compile code and deploy it, it becomes legacy code. This means it’s a responsibility at best and a liability at worst. The trouble is that we become attached to things...even code.

For a long time, I saw my code as something that people would look at and associate with me. When the opportunity or need to throw away my code came along, especially if somebody else suggested it...I’d take it as a personal attack. I’ve heard [@orta](https://twitter.com/orta) respond to this with, *“You are not your code.”* It’s a simple reminder that we are all growing and learning and our industry is still changing. It’s something you can appreciate whenever you look at code you wrote a month ago, or a year ago, or 10 years ago.

Getting rid of your code is not personal. We all did the best we could when we wrote the first version of something. Don’t be afraid to have “throwing it all out” be one of your steps for iterating on a design.

### "One who uses the proper metaphor, and strives to find the proper metaphor."

This is great. It's a larger version of the problem I often run into of spending a rather large amount of time thinking about what to name a variable.

When you spend the time to find or create the right metaphor for something you are building, you don’t have to explain it so much to those who will use it.

Years ago, [Metaphors We Live By](http://www.amazon.com/Metaphors-We-Live-George-Lakoff/dp/0226468011) was recommended to me by [Venkatesh Rao](http://ribbonfarm.com). If you want more insight into how we use metaphors to share concepts with others (which is pretty important in programming) and how metaphor affects both our thinking and our language...I highly recommend reading this. In fact, I’ll be re-reading it soon.

One problem I’ve seen is when somebody uses a metaphor that is **almost** appropriate for what they are building. If you have a class or variable that is essentially a `Foo` except for two common edge cases where it behaves like a `Bar` you will inevitably have somebody who uses it exclusively like a `Foo` and causes problems.

### "If you're not enhancing the field, it's just code."

This comes from the distinction of good, better, and best in the art world. Good artists should be able to look across their history to see a progression of quality. There comes a moment early in every programmers learning when they look back at some code they wrote a week or month ago and gasp at what they thought was acceptable to them back then. This is such a great moment. The good news is that it never goes away. I still look at things I did last year and, while I don't gasp, I can always find things that I'd do more elegantly today.

The best artists will show a mastery of technique, a mastery of subject matter, and an ability to enhance the field in general. "Enhancing the field in general" is one of those phrases that can be interpreted so many ways.

### What about the 10x programmer?

Many have written supporting or denying the existence of the 10x programmer. I’m squarely in the ‘they do exist’ camp, but perhaps not in the traditional sense.

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">How to be a 10x engineer: help ten other engineers be twice as good.</p>&mdash; Peter Seibel (@peterseibel) <a href="https://twitter.com/peterseibel/status/512615519934230528">September 18, 2014</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

My view of the 10x programmer is that it's not about writing 10x more code. We don't get paid to write lines of code any more than a mathematician gets paid to write variables in LateX documents. We both get paid to solve problems. Code is a side effect of solving problems.

Ideally, the 10x developer writes less code and spends their time more efficiently in choosing what code to write.

We are in a unique position that the tools we use today are the same tools we use to make better tools for tomorrow. If I wanted to build a house by hand, I may get some really nice basic tools. A good framing hammer is top of my list. The trouble is, if I wanted a nail gun to put my roof on faster, I'd have a lot of trouble trying to build one with my hammer and saw. I'd probably end up buying it.

With software, I have the (strictly metaphorical) option of building my own nail gun...or building a better nail gun than one I could buy. When a team uses `Hammers`, and one team member builds a `NailGunFactory`, the whole team suddenly becomes more efficient.

People who can identify tools or processes that would help everybody on your team is what I think of as a 10x developer. The best ones may not even write a lot of code. They act as a multiplier for your whole team. And when you have a good multiplier, every bit of growth that your team has is amplified.






