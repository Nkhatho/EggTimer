//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes: [String : Int] = ["Soft": 300, "Medium": 420, "Hard": 720]
    var eggTimerCounter: Int = 0
    var timer: Timer? = nil
    @IBOutlet weak var labelOutput: UILabel!

    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer!.invalidate()
        eggTimerCounter = eggTimes[sender.currentTitle!]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter(counter: Int) {
        //example functionality
        if eggTimerCounter == 0 {
            timer!.invalidate()
            print("Your egg is ready")
        }
        print("\(eggTimerCounter) seconds to egg ready")
        eggTimerCounter -= 1
    }
    
    
}
