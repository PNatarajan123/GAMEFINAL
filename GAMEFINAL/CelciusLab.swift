//
//  CelciusLab.swift
//  GAMEFINAL
//
//  Created by Natarajan, Praveen on 3/12/20.
//  Copyright © 2020 Natarajan, Praveen. All rights reserved.
//

import UIKit
class CelciusController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    @IBOutlet weak var Celcius: UITextField!
    @IBOutlet weak var Farenheit: UILabel!
    @IBOutlet weak var Kelvin: UILabel!
    @IBOutlet weak var Kilometers: UITextField!
    @IBOutlet weak var Meters: UILabel!
    @IBOutlet weak var Miles: UILabel!
    @IBOutlet weak var Feet: UILabel!
    @IBOutlet weak var Inches: UILabel!
    
    let foo = ("Distance" , "Temperature")
    
    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        Celcius.text = "0.0"
        Farenheit.text = "0.0"
        Kelvin.text = "0.0"
        Kilometers.text = "0.0"
        Meters.text = "0.0"
        Miles.text = "0.0"
        Feet.text = "0.0"
        Inches.text = "0.0"
    }
    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
    // let is for values that are not modified
        let s1 = Float(Celcius.text!) // Input value, !(Bang) avoids errors

        // Pythagorean Calculation
        let s2 = ((s1! * 9/5) + 32)
        let s3 = (s1! + 273.15)

        // Set calculation to screen
        Kelvin.text = String(s3)
        print(foo.1)
        print("Kelvin: \(Kelvin.text!)")
        Farenheit.text = String(s2)
        print("Farenheit:  \(Farenheit.text!)")
    
    }
    
@IBAction func calculate1(sender: UIButton) {
    // let is for values that are not modified
        let K = Float(Kilometers.text!) // Input value, !(Bang) avoids errors

        // Pythagorean Calculation
        let Me = (K! * 1000)
        let Mi = (K! * 0.621371)
        let F = (K! * 3280.83989501)
        let I = (K! * 39370.1)

        // Set calculation to screen
        Meters.text = String(Me)
        Miles.text = String(Mi)
        Feet.text = String(F)
        Inches.text = String(I)
    
        print(foo.0)

    }
}
