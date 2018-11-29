//
//  SecondViewController.swift
//  Project3
//
//  Created by Jose on 11/15/18.
//  Copyright © 2018 josejimenez. All rights reserved.
//

import UIKit

 class SecondViewController: UIViewController {
  var timer = Timer()
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        displayLabel.text = "▫️🍇▫️🍎▫️🍌▫️🍒▫️🍐▫️🍊"
    }

    @objc func actionOfEmoji()  {
     let myLabel = displayLabel.text
        let index = myLabel?.characters.index(after: (myLabel?.startIndex)!)
        
        let ch = myLabel?.substring(to: index!)
        let rest = myLabel?.substring(from: index!)
        
        let newEmoji = rest! + ch!
        displayLabel.text = newEmoji
        
    }
    
    @IBAction func Start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.50, target: self, selector: #selector(self.actionOfEmoji), userInfo: nil, repeats: true)
    
    }
    @IBAction func Stop(_ sender: Any) {
    timer.invalidate()
    
    }
    
}

