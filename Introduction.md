# Introduction
### About this tutorial
There aren't quite so many recent APL tutorials around, and it can feel like APL is a bit of a dead language - replaced by J or K or... eurgh.... MATLAB.

Well APL is alive and well... alive. This tutorial, much like [its muse](http://learnyouahaskell.com/introduction#about-this-tutorial), aims to help beginners through the seeming weirdness of its target programming language. It might seem weird if you have experience with other languages already, as APL does things a little different. 

APL is just a mathematical notation for writing algorithms. It is __A Programming Language__.

There is a Stack Exchange chatroom known as [The APL Orchard](https://chat.stackexchange.com/rooms/52405/the-apl-orchard) which is a bustling and friendly place to ask questions and learn more about APL.

### What the hell is APL?
APL is an array-oriented programming language. An array is a [hyperrectangular](https://en.wikipedia.org/wiki/Hyperrectangle) arrangement of data. In APL you can have a number, or a list of numbers, or a matrix (table) of numbers, or a 3-dimensional array made of matrices... in Dyalog, up to 15 dimensional arrays are supported. In other languages, you might loop over elements in an array and apply the same operation to each element. In APL you do it all at once.

Array-orientation is one of the major distinctions of APL compared to other programming languages. The other is its use of symbols. APL has **no reserved keywords**. Instead, there are a number of primitive functions represented by symbols (e.g. `+-×÷*⍟⌈⌊|!?⌹≤<=>≥⍋⍒⊂⊃⍳⍷`). These functions can be named, and combinations of these functions can be named. Thoughtful naming of functions and variables in APL can lead to delightfully clear code which basically does what it says.

```APL
      sum←+/
      count←≢  
      average←sum÷count
      average 1 2 3 4 5
3 
      list←1 2 3 4 5
      (sum list)÷count list
3
      (sum÷count)list
3
      average list
3
```

APL is also an interpreted language, meaning the computer goes through your code line-by-line and executes the statement on each line - and dynamically typed, meaning the computer's representation of numbers is hidden to the user; a number is just a number to APL.

This is the beginning of my development of this tutorial. As I work through this and other projects, I am sure to come back and update these documents with other thoughts and examples. For now, let's learn us a Haskell for Great Good!

### What you need to dive in
These tutorials are written as interacive [Jupyter notebooks](https://jupyter.org/) with a [Dyalog kernel](https://github.com/Dyalog/dyalog-jupyter-kernel). To run these interactively, you'll need a copy of Dyalog which is [available for free for non-commercial use](https://www.dyalog.com/download-zone.htm). You will then need to [follow these instructions](https://github.com/Dyalog/dyalog-jupyter-kernel/wiki/1.-Offline-usage) to install Jupyter and the Dyalog kernel on your operating system. **HOWEVER**, [TryAPL](https://tryapl.org/) can run Jupyter notebooks interactively by pasting their URL (from the address bar above) into the box at the bottom of the "Learn" tab. Using TryAPL, you can start this tutorial while you wait for your license for Dyalog to be approved (or possibly go through the whole thing without ever downloading a full interpreter).