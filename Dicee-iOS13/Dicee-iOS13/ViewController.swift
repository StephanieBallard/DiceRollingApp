//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    //since we dont need anything to happen when the view loads up anymore we can delete this code below.
    
    //override func viewDidLoad() {
      //  super.viewDidLoad()
        //Who          what     value
        //diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        //diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")

    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = diceArray.randomElement() // these two lines of code do the same thing
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
       // leftDiceNumber = leftDiceNumber + 1
       // rightDiceNumber = rightDiceNumber - 1
       // leftDiceNumber += 1
       // rightDiceNumber -= 1
    }
}


