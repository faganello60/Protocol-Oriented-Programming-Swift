//
//  AddViewController.swift
//  Protocol-Oriented-Programming-Example-2
//
//  Created by Bruno Faganello Neto on 06/10/16.
//  Copyright © 2016 Bruno Faganello Neto. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var length: UITextField!
    @IBOutlet weak var segmentBird: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_ sender: AnyObject) {
        let index = segmentBird.selectedSegmentIndex
        
        switch index {
        case 0:
            let flappy = Flappy(name: name.text!, weight: Double(weight.text!)!, wingLength: Double(length.text!)!)
            BDManager.sharedInstance.add(b: flappy)
            break
        
        case 1:
            let penguin = Penguin(name: name.text!, weight: Double(weight.text!)!, legLength: Double(length.text!)!)
            BDManager.sharedInstance.add(b: penguin)
            break
        
        case 2:
            let ost = OstrichX(weight: Double(weight.text!)!, name: name.text!, legLength: Double(length.text!)!, wingLength: Double(length.text!)!)
            BDManager.sharedInstance.add(b: ost)
            break
            
        default:
            break
        }
        self.navigationController?.popViewController(animated: true)
    }

}
