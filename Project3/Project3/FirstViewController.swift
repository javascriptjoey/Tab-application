//
//  FirstViewController.swift
//  Project3
//
//  Created by Jose on 11/15/18.
//  Copyright © 2018 josejimenez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var timer = Timer()

    @IBOutlet weak var timerlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @objc func DoItNow()  {
        
     let date = Date()
     let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:m:s"
        
  timerlabel.text  =  dateFormatter.string(from:date)
    }
    
    
    @IBAction func Start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(self.DoItNow), userInfo: nil, repeats: true)
        
    }
    @IBAction func Stop(_ sender: Any) {
    
    timer.invalidate()
    
    }
    
}

