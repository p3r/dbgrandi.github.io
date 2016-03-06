---
title: Growing Beyond Junior
date: 2016/2/27
published: true
---

I've previously written about [what a junior developer should know](http://dbgrandi.github.io/minimum_viable_programmer/) and [what makes a great programmer](http://dbgrandi.github.io/good_great_10x/). Today, I want to talk about the path from being a junior developer to being a mid-level developer.

## When you are looking for a job…

Let’s start out by assuming that you are a junior developer without a job. You need to practice programming… a lot. According to experts, you can't just do more tutorials and practice making table views. In order to progress you need to have organized practice with feedback and reflection. This is known as [deliberate practice](https://en.wikipedia.org/wiki/Practice_(learning_method)#Deliberate_practice). For a lot of people, the way to do this will be by getting a job as developer. This will allow you to focus on the craft of programming every day.

When looking for a job, you’ll probably see a lot of listings looking for senior developers, and not as many looking for junior developers. Senior developers are **very hard** to find these days. [Orta mentioned this in a recent post](http://artsy.github.io/blog/2016/01/30/iOS-Junior-Interviews/) but I think it's worth repeating - If you find a company that you’d want to work with, apply to them regardless of if they are explicitly advertising a junior position.

Once you start talking to companies, take the time to find out how they handle junior developers. Do they have a plan in place for mentorship? What do juniors work on, day to day? These are the kinds of things that vary quite a bit from company to company. Some may have a plan, and others may have a vague path. If you can, talk to a junior on the team. Think about how you learn, and how you want to work as part of a team.

## You need to be exposed to new ideas and opinions

This is such an important thing for life in general. When you work with other people, you'll get more of this. Each person has their own perspective of programming. It's based on the history of their experience, their previous failures and successes, the people that influenced them when they were starting out, and the landscape of the field when they started.

One way to be exposed to new ideas is to learn other programming languages. This exposes you to an entirely new community. This may seem counter-intuitive, especially while you are still overwhelmed with learning iOS. People occasionally relate it to learning spoken languages. "Won't learning French at the same time I'm learning Japanese just confuse me?" It could be confusing, but I also think it helps to clarify concepts when you get to see them from different angles.

If you're an iOS developer looking for another language to learn, consider Ruby. Learning even a little bit of Ruby will help you better understand tools like CocoaPods or fastlane, which are becoming staples of iOS development. It will also put you in a position to *improve* those tools, which will make iOS development better for everybody.

## You need to have the time to reflect

I talk to a lot of junior developers at meetups and the peer lab that Artsy runs. I feel like there are so many people going through code schools these days that are at this point where they have just learned an incredible amount in a short amout of time. The conversations I have tend to be a combination of excited and overwhelmed. There is *soooooo* much to learn, and it will take time to internalize things that you have seen or done.

Remember when you tried to cram for a final exam by reading a semester's worth of work in the 2 days before your test? I was a pretty lazy student, so this was my normal approach. I passed most exams, but lost a lot of the deeper lessons of things like calculus and the philosophy of Plato. There are some things that just take time to understand. Progamming is full of these kinds of ideas. It took me a while to fully understand the intent of how and why one would use a delegate in Objective-C. Before I had my "Aha!" moment about that, I was just cutting and pasting my way to getting code to work. I can't tell you exactly when that specific concept clicked in my head, but I can guarantee that it wasn't when I was sitting at a keyboard. For me, I tend to think about these things when on the subway or when running.

## Beyond practice… Projects, Peers, Passion, and Play

The concept of practicing programming is something that we can explore a bit and expand upon. I was talking with [@lazerwalker](https://twitter.com/lazerwalker) recently about this post and he pointed me to a [paper by Mitchel Resnick](http://web.media.mit.edu/~mres/papers/constructionism-2014.pdf) that looks at the design of [Scratch](https://scratch.mit.edu) through the lens of Four P’s of Creative Learning: Projects, Peers, Passion, and Play.

### Projects

There's a difference between making hello world, and making an app that you need or want and will use and pushes your boundaries in some way. Having a project with a goal will help you focus on things bigger than a single technical concept.

### Peers

Working with other people let's you share what you've done, get feedback from them, and learn from that interaction. It gives you the opportunity to build on ideas. This is the foundation of why communities are so powerful.

### Passion

When you have passion for something, you are more willing to work through the difficult times to get beyond it. Programming certainly offers plenty of difficult moments… and having passion is one of the most common traits I see in people who I consider to be exceptional programmers.

### Play

> We think of play as an attitude and an approach for engaging with the world. We associate play with taking risks, trying new things, and testing boundaries. We see play as a process of tinkering, experimenting, and exploring. These aspects of play are central to the creative learning process. - Mitchel Resnick

Sound familiar? This is essentially what we do every day when we program. This is something that never ends, and senior developers still do this every day. One difference I see between junior and senior developers that seems to make a difference is the *way* in which they play. Senior devs tend to know their tools better and have a different process for how they tinker.

Here's three things I learned that helped me play with code faster.

- Learn some keyboard shortcuts for Xcode. When you are tinkering and trying things, the limitation to your speed will eventually become the rate at which you can move around a project and manipulate code. Learn a few of the [most common shortcuts](https://spin.atomicobject.com/2014/03/23/xcode-keyboard-shortcuts/)

- Try [Dash](https://kapeli.com/dash). Seriously, this is one of the first apps I install on any new machine. It's on a system wide hotkey for me, and includes documentation for Ruby, iOS, and even specific pods that I use (like AFNetworking). I hit that hotkey about once every 5 minutes during a normal day.

- Learn when it's faster to build a throwaway project. If your app is large, experimenting with little changes can take a long time. I often build tiny apps to focus on a single idea. When I figure something out, I'll throw that app away and keep what I learned. Having a tiny app for this kind of focused experimentation can lower the cycle of edit, compile, run, repeat from a minute, down to seconds. This is a huge part of what Apple has been doing with Playgrounds.


## Are you still looking for the 4 Ps?

A job as a junior developer is not always the most effecient way to progress. There are jobs where you'll be the only developer working on maintaining an old app, or jobs where you're working on a team that doesn't have the time to properly mentor a junior. In those cases, you are missing some of the elements of deliberate practice that will help you grow faster. You'll  write code, but it may not have the impact it would if you were writing code more slowly, with a focus on writing better code.

For those who don't have a full time job, or those who don't feel like they get enough of this at work, there is a great way to get deliberate practice that has the 4 P's. *Find an open source project and contribute.*

In doing so, you'll work on a project that is bigger than any one person. It will have a vision and a goal that you can drive towards. You'll get to work with peers with different perspectives and experience, and you'll get direct feedback from those peers when you submit pull-requests. The community around open source projects is self-selecting and often consists of people working on things in their spare time, so you'll work with people who are passionate about what they do. The whole process of contributing to a project on GitHub (especially pull-requests) has elements of play where you experiment with an idea, send a pull request, and collaboratively explore how to make it better.

This puts you in an environment where you get to practice understanding code, analyzing options, implementing solutions, and getting feedback on your pull requests from other developers. For some people, this may sound scary. It's the kind of thing that can make you feel vulnerable. That's okay. It's something that I still feel when I submit a PR. I've come to accept that having these feelings are often related to the opportunities for growing as a developer.

## tl;dr - Practice project based programming with passionate peers who play.
