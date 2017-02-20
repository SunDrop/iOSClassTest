//
//  Car.swift
//  TransportUI
//
//  Created by Slava Konashkov on 2/19/17.
//  Copyright © 2017 UniT. All rights reserved.
//

import UIKit

class Car: Transport {
    init(name : String, speed : Float, troubleProbobility : Float) {
        super.init()
        self.setName(name)
        self.setSpeed(speed)
        self.setTroubleProbobility(troubleProbobility)
    }
}
