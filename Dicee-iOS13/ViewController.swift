//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var diceImageOne: UIImageView! // ib outlets for first left dice
    @IBOutlet weak var diceImageTwo: UIImageView! // inoutlet for seconf right dice
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageOne.image =  UIImage(imageLiteralResourceName: "DiceSix") // at starting ti shows six
        diceImageTwo.image = UIImage(imageLiteralResourceName: "DiceTwo") // at starting it shows two
    }

    @IBAction func Roll(_ sender: UIButton) {
        
        let imageAr = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceSix")]
        diceImageOne.image = imageAr[Int.random(in: 0...5)]
        diceImageTwo.image = imageAr[Int.random(in: 0...5)]
        
       
    }
    
}

