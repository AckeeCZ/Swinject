//
//  BicycleType.swift
//  Swinject
//
//  Created by Tomas Kohout on 8/20/16.
//  Copyright © 2016 Swinject Contributors. All rights reserved.
//

import Foundation
import UIKit

internal protocol BicycleType {
    var color: UIColor {get}
    var owner: PersonType {get}
}

internal class Bicycle: BicycleType {
    let color: UIColor
    let owner: PersonType
    
    init(color: UIColor, owner: PersonType) {
        self.color = color
        self.owner = owner
    }
}