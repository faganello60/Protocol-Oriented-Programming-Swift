//: Playground - noun: a place where people can play
// Protocol-Oriented Programming in Swift: https://www.raywenderlich.com/109156/introducing-protocol-oriented-programming-in-swift-2

import UIKit

protocol Bird{
    var name:String{get}
    var canFly:Bool{get}
    var weight:Double{get}
    var type:String{get}
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
    var type: String
}

struct Penguin:Bird,Runable{
    var name: String
    var canFly:Bool{return false}
    var weight: Double
    var legLength:Double
    var type: String
}

struct SwiftBird: Bird, Flyable {
    var name: String { return "Swift \(version)" }
    let version: Double
    var weight: Double
    var wingLength:Double
    var type: String
}

struct BrunoBird:Bird,Flyable,Runable{
    var weight: Double
    var name: String
    var legLength: Double
    var wingLength: Double
    var type: String
}

extension Bird where Self: Flyable{
    // Flyable birds can fly!
    var canFly: Bool {return true}
    var airSpeed: Double {return wingLength*(weight-3)} // It`s not real =D
}

extension Bird where Self:Flyable, Self: Runable{
    var boss:String{return "\(name) super"}
}

extension Bird where Self: Runable{
    //Runable birds can run
    var canRun:Bool{return true}
    var landSpeed:Double {return legLength*3.32}        // It`s not real =D
}

//Using enum
enum BirdType: Bird{
    case Brazillian
    case African

    var name: String{return "LALA"}
    var canFly: Bool{return false}
    var weight: Double{return 99.99}
    
    var type: String{
        switch self {
        case .Brazillian:
            return "HUE"
        case .African:
            return "HAH"
        }
    }
}






