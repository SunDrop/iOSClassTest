//
//  Transport.swift
//  TransportUI
//
//  Created by Slava Konashkov on 2/19/17.
//  Copyright © 2017 UniT. All rights reserved.
//

import UIKit

class Transport: NSObject {
    private var name : String = ""
    private var speed : Float = 0.0
    private var troubleProbobility : Float = 0.0
    private var distance : Float = 0.0
    
    override init() {
        super.init()
    }
    
    func setName(_ name : String) {
        self.name = name
    }
    
    func setSpeed(_ speed : Float) {
        self.speed = speed
    }

    func setTroubleProbobility(_ troubleProbobility : Float) {
        self.troubleProbobility = troubleProbobility
    }
    
    func getSpeed() -> Float {
        return self.speed
    }
    
    func getTroubleProbobility() -> Float {
        return self.troubleProbobility
    }
    
    func hasTrouble(trouble : UInt) -> Bool {
        return Float(trouble) <= self.troubleProbobility
    }
    
    func move(isTrouble : Bool) {
        var speedInMinute = self.speed / 60
        if isTrouble {
            speedInMinute = self.speed * 0.75 / 60
        }
        self.distance += speedInMinute
        print("\(self.name): \(self.distance)")
    }
    
    func isWin(finish : Float) -> Bool {
        return self.distance >= finish
    }
}
