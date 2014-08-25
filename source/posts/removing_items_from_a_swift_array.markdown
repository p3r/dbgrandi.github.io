---
title: Removing Items from a Swift Array
date: 2014/8/23
published: true
---

While the semantics of Swift are still being ironed out, it seems like there is a [bit of discussion](https://devforums.apple.com/message/979026#979026) about what that may look like, specifically when it comes to Arrays.

Here's a simple Array extension to remove instances of a specific item. The type details were inspired by [ExSwift](https://github.com/pNre/ExSwift/blob/master/ExSwift/Array.swift), but I didnt' want to create a new array like pNre did.


~~~ swift
extension Array {
  mutating func remove <U: Equatable> (object: U) {
    for i in stride(from: self.count-1, through: 0, by: -1) {
      if let element = self[i] as? U {
        if element == object {
          self.removeAtIndex(i)
        }
      }
    }
  }
}

var a = [1,2,3,2,4]
println(a) // "[1,2,3,2,4]"
a.remove(2)
println(a) // "[1,3,4]"
~~~

Update from [@orta](https://twitter.com/orta): The other part of this that can be tricky is making sure your objects are properly equatable.

~~~swift
class TinkerObject : Equatable {
  // your class impl...
}

// note that this is OUTSIDE of your class impl to make it global
public func ==(lhs: TinkerObject, rhs: TinkerObject) -> Bool {
  return lhs.id == rhs.id
}
~~~
