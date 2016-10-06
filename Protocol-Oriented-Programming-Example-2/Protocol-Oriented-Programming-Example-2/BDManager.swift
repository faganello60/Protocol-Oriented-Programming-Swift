//
//  BDManager.swift
//  Protocol-Oriented-Programming-Example-2
//
//  Created by Bruno Faganello Neto on 06/10/16.
//  Copyright © 2016 Bruno Faganello Neto. All rights reserved.
//

import UIKit

class BDManager{
    static let sharedInstance = BDManager()
    var myBirds = [Bird]()
    private init() {}
    
    func add(b:Bird){
        myBirds.append(b)
    }
}
