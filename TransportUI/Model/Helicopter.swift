//
//  Helicopter.swift
//  TransportUI
//
//  Created by Slava Konashkov on 2/19/17.
//  Copyright © 2017 UniT. All rights reserved.
//

import UIKit

class Helicopter: Transport {
    var height : UInt = 0
    
    init(name : String, speed : Float, troubleProbobility : Float, height : UInt) {
        super.init()
        self.setName(name)
        self.setSpeed(speed)
        self.setTroubleProbobility(troubleProbobility)
        self.height = height
    }

}
