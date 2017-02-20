//
//  ViewController.swift
//  TransportUI
//
//  Created by Slava Konashkov on 2/19/17.
//  Copyright © 2017 UniT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var competitors : [Transport] = []
    let finish : Float = 100.0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initCompetitors()
        self.startCompetiton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initCompetitors() {
        self.competitors.append(Car(name : "Car", speed: 30, troubleProbobility: 10))
        self.competitors.append(Helicopter(name : "H-100", speed: 60, troubleProbobility: 50, height: 100))
        self.competitors.append(Helicopter(name : "H-200", speed: 50, troubleProbobility: 40, height: 200))
        self.competitors.append(Helicopter(name : "H-300", speed: 40, troubleProbobility: 30, height: 300))
    }
    
    func startCompetiton() {
        if (self.competitors.count > 0) {
            var isWin : Bool = false
            var timeMinute : UInt = 0
            while (!isWin) {
                timeMinute += 1
                let trouble : UInt = UInt(arc4random_uniform(100))
                for transport in self.competitors {
                    transport.move(isTrouble: transport.hasTrouble(trouble: trouble))
                    if transport.isWin(finish: self.finish) {
                        isWin = true
                        dump(transport)
                    }
                }
                print()
            }
        }
    }


}

