//: Playground - noun: a place where people can play
// Protocol-Oriented Programming in Swift: https://www.raywenderlich.com/109156/introducing-protocol-oriented-programming-in-swift-2

import UIKit

protocol Bird{
    var name:String{get}
    var canFly:Bool{get}
    var weight:Double{get}
}

protocol Flyable{
    var wingLength:Double{get}
}

protocol Runable{
    var legLength:Double{get}
}

struct FlappyBird:Bird,Flyable{
    var name: String
    var flappyFrequency:Double
    var weight: Double
    var wingLength: Double
}

struct Penguin:Bird,Runable{
    var name: String
    var canFly:Bool{return false}
    var weight: Double
    var legLength:Double
}

struct SwiftBird: Bird, Flyable {
    var name: String { return "Swift \(version)" }
    let version: Double
    var weight: Double
    var wingLength:Double
}

struct BrunoBird:Bird,Flyable,Runable{
    internal var weight: Double

    internal var name: String

    internal var legLength: Double

    internal var wingLength: Double
}

extension Bird where Self: Flyable{
    // Flyable birds can fly!
    var canFly: Bool {return true}
    var airSpeed: Double {return wingLength*(weight-3)} // It`s not real =D
}

extension Bird where Self:Flyable, Self: Runable{
    var boss:String{return "Boss Dad"}
}

extension Bird where Self: Runable{
    //Runable birds can run
    var canRun:Bool{return true}
    var landSpeed:Double {return legLength*3.32}        // It`s not real =D
}






