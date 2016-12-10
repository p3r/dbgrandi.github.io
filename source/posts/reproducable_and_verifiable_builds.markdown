---
title: Reproducible and Verifiable Builds
date: 2016/12/3
published: true
---

A few years ago, somebody sent me a link to the [Debian Reproducible Build project](https://wiki.debian.org/ReproducibleBuilds). The goal was to have a build pipeline that is entirely reproducible and verifiable. Given a binary and some source code, you should be able to verify that the source code will produce that binary. This means users can know that the binary distribution they use is *exactly* what they think it is.

Why would this be important? We're starting to see more apps operate under an open source model. Some are open to be transparent with the community, because that is a value they embody. Some are open to show that they are secure and protect your privacy, like [Signal](https://github.com/WhisperSystems/Signal-iOS), [Wire](https://github.com/wireapp/wire-ios) or [Mozilla Focus](https://github.com/mozilla-mobile/focus).

You can read the Signal source code, and get a full understanding of how it works and what protection it offers users in terms of privacy, protection against eavesdropping, and other great features. The problem is that, between the source code and your phone, there is a black box of transformations that users do not see. We do not know if the binary from the AppStore does not also include other, possibly nefarious, code. I'm not in any way claiming that this is the case for any of the apps I listed above, just that we can't possibly know. Last year we saw [Xcode Ghost](https://en.wikipedia.org/wiki/XcodeGhost), where apps were compiled and released with a maliciously modified version of the Xcode toolchain. So, it may not even be up to the individual developers if their code is changed.

It should be within Apple's power to build support into their distribution pipeline so that, given an .ipa file, and some source code, I could verify that the source code would produce that .ipa file.

It's slightly complicated, due to how the IPA file is signed and encrypted, but I think it's doable with 2 pieces. First, developers would need to include data about the build pipeline as a resource that is deployed with their app. Debian does this with a [`.buildinfo`](https://wiki.debian.org/ReproducibleBuilds/BuildinfoSpecification) This would include things like, specific versions of Xcode and the compiler that was used to build the app, the version of OSX that it was built upon, the system time and locale, and specific versions of any system libraries that may affect the build output. Second, Apple would need to include a hash of the un-encrypted binary that was submitted to the iTunesConnect and subsequently signed by Apple.

There are times when I'm so proud to develop for iOS devices. When I see how Apple approaches accessibility. When I see Apple design for privacy and security. When I see Apple becoming a more transparent and open company with things like ResearchKit and the development of Swift. This can be the next step in helping enable transparency of what is in the AppStore. It may not be important for Apple. It may be irrelevant to most people. But, like accessibility and privacy, it will be vitally important to those who need it the most.

I'm opening a rdar to share my thoughts with Apple, and encourage you to do the same.
