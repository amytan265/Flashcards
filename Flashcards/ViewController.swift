//
//  ViewController.swift
//  Flashcards
//
//  Created by Amy Tan on 2/15/20.
//  Copyright © 2020 Amy Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var frontLabel: UILabel!
    
    @IBOutlet weak var backLabel: UILabel!

    @IBOutlet weak var Card: UIView!
    
    @IBOutlet weak var btnOptionOne: UIButton!
    
    @IBOutlet weak var btnOptionTwo: UIButton!
    
    @IBOutlet weak var btnOptionThree: UIButton!
    
    
    override func viewDidLoad() {
        
        Card.layer.cornerRadius = 20.0
        frontLabel.layer.cornerRadius = 20.0
        backLabel.layer.cornerRadius = 20.0
        Card.layer.shadowRadius = 15.0
        Card.layer.shadowOpacity = 0.2
        
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
        
        btnOptionOne.layer.borderWidth = 3
        btnOptionOne.layer.cornerRadius = 10
        btnOptionOne.layer.borderColor = #colorLiteral(red: 0.4358217716, green: 0.5654067397, blue: 0.7192854285, alpha: 1)
        
        btnOptionTwo.layer.borderWidth = 3
        btnOptionTwo.layer.cornerRadius = 10
        btnOptionTwo.layer.borderColor = #colorLiteral(red: 0.4358217716, green: 0.5654067397, blue: 0.7192854285, alpha: 1)
        
        btnOptionThree.layer.borderWidth = 3
        btnOptionThree.layer.cornerRadius = 10
        btnOptionThree.layer.borderColor = #colorLiteral(red: 0.4358217716, green: 0.5654067397, blue: 0.7192854285, alpha: 1)
        
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        
        if (frontLabel.isHidden == true) {
            frontLabel.isHidden = false;
        }
        else {
            frontLabel.isHidden = true;
        }
    }
    
    @IBAction func didTapOptionOne(_ sender: Any) {
        btnOptionOne.isHidden = true;
    }
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        btnOptionThree.isHidden = true;
    }
    
    
    @IBAction func didTapOptionTwo(_ sender: Any) {
        frontLabel.isHidden = true;
    }
}

