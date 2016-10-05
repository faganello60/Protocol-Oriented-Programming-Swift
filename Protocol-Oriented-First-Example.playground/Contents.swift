//: Playground - noun: a place where people can play
// Protocol-Oriented Programming in Swift: https://www.raywenderlich.com/109156/introducing-protocol-oriented-programming-in-swift-2

import UIKit

protocol Bird{
    var name:String{get}
    var canFly:Bool{get}
}

protocol Flyable{
    var speed:Double{get}
}

protocol Runable{
    var velocity:Double{get}
}

struct FlappyBird:Bird,Flyable{
    var name: String
    var flappyFrequency:Double
    var speed: Double{
        return 3 * flappyFrequency
    }
}

struct Penguin:Bird,Runable{
    var name: String
    var canFly:Bool{return false}
    var velocity: Double{
       return 30.4
    }
}

struct SwiftBird: Bird, Flyable {
    var name: String { return "Swift \(version)" }
    let version: Double
    var speed: Double { return 2000.0 }
}

extension Bird where Self: Flyable{
    // Flyable birds can fly!
    var canFly: Bool {return true}
}

extension Bird where Self: Runable{
    var canRun:Bool{return true}
    var test:Double{return velocity*90}
}


var fb = FlappyBird(name: "Bruno", flappyFrequency: 60)
fb.canFly

var sb = SwiftBird(version: 90)
sb.canFly

var p = Penguin(name: "Little Penguin")
p.canFly
p.name
p.canRun
p.test

