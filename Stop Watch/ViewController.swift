//
//  ViewController.swift
//  Stop Watch
//
//  Created by Christopher on 10/21/15.
//  Copyright © 2015 Idea360. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = NSTimer()
    var counter = 0

    @IBAction func playButton(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "increaseTimer", userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        timer.invalidate()
    }
    
    
    @IBAction func stopButton(sender: AnyObject) {
        timer.invalidate()
        counter = 0
        timerLabel.text = String(counter)
    
    }
    
    func increaseTimer(){
        counter++
        
        timerLabel.text = String(counter)
    }
    
    
    @IBOutlet weak var playButton: UIToolbar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

