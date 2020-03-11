//
//  ViewController.swift
//  MyQuiz
//
//  Created by Barnes, Allen A on 2/12/20.
//  Copyright © 2020 Barnes, Allen A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // variables
    var classSit:Int = 0
    var brainsBrawns:Int = 0
    var friendCount:Int = 0
    var total:Int = 0
    var slidebonus:Int = 0
    @IBOutlet weak var myTotal: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    // switch functionality
    @IBAction func selectClass(_ sender: UISwitch) {
        if sender.isOn {
                    classSit = 1
                }
            else {
                    classSit = 0
                }
    }
    @IBAction func selectPride(_ sender: UISwitch) {
        if sender.isOn {
                    brainsBrawns = 1
                }
            else {
                    brainsBrawns = 0
                }
    }
    
    @IBAction func selectFriends(_ sender: UISwitch) {
        if sender.isOn {
                   friendCount = 1
               }
              else {
                   friendCount = 0
               }
    }
    
    // total calc
    @IBAction func mySlider(_ sender: UISlider) {
        slidebonus = Int(sender.value)
    }
    
    @IBAction func submit(_ sender: Any) {
    total = classSit + brainsBrawns + friendCount + slidebonus
        if(total <= 3) {
            myTotal.text = "You are an adventurous type! Your tenacity for getting things done and go-get-em attitude makes you a Charmander!"
            myImage.image = UIImage(named: "charmander")
        }
        else if(total > 1 && total <= 6){
            myTotal.text = "You are an intuitive type! You prefer to stand back and analyze situations before you act, but aren't afraid to jump in head first! Your intuitive nature makes you a Squirtle!"
            myImage.image = UIImage(named: "squirtle")
        }
        else {
            myTotal.text = "You are a reserved type! You choose to view life as a personal journey, and your bonds with those close to you are unrivaled. Your private nature makes you a Bulbasaur!"
            myImage.image = UIImage(named: "bulbasaur")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

