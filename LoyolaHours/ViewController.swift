//
//  ViewController.swift
//  LoyolaHours
//
//  Created by Sarah Mehmedi on 12/1/15.
//  Copyright © 2015 Sarah Mehmedi. All rights reserved.
//


import Foundation
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var TextView: UITextView!
    var FirstString = String()
    
    override func viewDidLoad() {
        
//        if let TextView = cell.labelTitle{
//            TextView.text = FirstString
//        }
        TextView.text? = FirstString
    }
}
