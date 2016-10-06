//
//  Penguin.swift
//  Protocol-Oriented-Programming-Example-2
//
//  Created by Bruno Faganello Neto on 06/10/16.
//  Copyright © 2016 Bruno Faganello Neto. All rights reserved.
//

import UIKit

struct Penguin:Bird,Runable{
    var name: String
    var canFly:Bool{return false}
    var weight: Double
    var legLength:Double
}
