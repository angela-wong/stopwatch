//
//  ViewController.swift
//  Stopwatch
//
//  Created by Angela Wong on 2/16/17.
//  Copyright © 2017 Angela Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var time: UILabel!
    
    var stopWatch = Stopwatch()
    var timer : Timer?
    
    func updateTimer(_ timer: Timer) {
        time.text = stopWatch.elapsedTime()
    }
    
    @IBAction func start(_ sender: UIButton) {
        if (timer != nil && timer!.isValid){
            timer!.invalidate()
        } else {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.updateTimer), userInfo: nil, repeats: true)
        stopWatch.startStopwatch()
        }
    }

    @IBAction func stop(_ sender: UIButton) {
        stopWatch.stopStopwatch()
        if (timer!.isValid) {
            timer!.invalidate()
        }
    }
    

}

