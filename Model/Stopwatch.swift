//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Angela Wong on 2/16/17.
//  Copyright © 2017 Angela Wong. All rights reserved.
//

import Foundation

class Stopwatch : NSObject {
    var startTime : Date?

    func startStopwatch() {
        startTime = Date()
    }
    
    func stopStopwatch() {
        startTime = nil
    }
    
    func elapsedTime() -> String? {
        if(startTime != nil) {
            let interval = -1 * startTime!.timeIntervalSinceNow
            let minutes : Int = Int(interval/60)
            let seconds : Int = Int(interval) - (minutes*60)
            let mseconds : Int = Int((modf(interval).1) * 100)
            print(interval)
            return String(format: "%02d:%02d.%2d", minutes, seconds, mseconds)
        }
        return nil
    }
}
