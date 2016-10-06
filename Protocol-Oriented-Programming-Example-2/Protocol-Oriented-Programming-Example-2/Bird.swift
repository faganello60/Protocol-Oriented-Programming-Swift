//
//  Bird.swift
//  Protocol-Oriented-Programming-Example-2
//
//  Created by Bruno Faganello Neto on 06/10/16.
//  Copyright © 2016 Bruno Faganello Neto. All rights reserved.
//

import UIKit

protocol Bird{
    var name:String{get}
    var canFly:Bool{get}
    var weight:Double{get}
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
