//
//  ViewController.swift
//  tally app
//
//  Created by Max Ray on 9/28/23.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var tallyLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    
    @IBOutlet weak var firstSwitch: UISwitch!
    @IBOutlet weak var secondSwitch: UISwitch!
    @IBOutlet weak var thirdSwitch: UISwitch!
    
    
    
    
   
    
    // this is all for reset button
    func reset() {
        tallyLabel.text = "0"
        firstSwitch.isOn = false
        secondSwitch.isOn = false
        thirdSwitch.isOn = false
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        reset()
    }
    
    // this is all for reset button
    
    var addingNum: Int = 0
    
    func checkSwitch()-> Int {
        if firstSwitch.isOn {
            secondSwitch.isOn = false
            thirdSwitch.isOn = false
            let addingNum = 1
            return addingNum
        } else if secondSwitch.isOn {
            firstSwitch.isOn = false
            thirdSwitch.isOn = false
            let addingNum = 5
            return addingNum
        } else if thirdSwitch.isOn {
            firstSwitch.isOn = false
            secondSwitch.isOn = false
            let addingNum = 10
            return addingNum
        }
        return addingNum
    }
    
    
    @IBAction func tallyButttonTapped(_ sender: UIButton) {
        let numToAdd = checkSwitch()
        let currentTallyText = tallyLabel.text ?? "0"
        
        if let currentTallyInt = Int(currentTallyText) {
            let newTallyInt = currentTallyInt + numToAdd
            tallyLabel.text = String(newTallyInt)
        }
//        var numToAdd = checkSwitch()
//        var labelCount: Int = 0
//        labelCount += numToAdd
//        //var tallyText: Int = Int(tallyLabel.text)
//        tallyLabel.text! += String(labelCount)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tallyLabel.text = "0"
        // Do any additional setup after loading the view.
    }
    
   
    
    
}


// var tallyText: Int = tallyLabel.text
// tallyText += labelCount
// tallyText = String(tallyText)
