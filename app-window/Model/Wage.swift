//
//  Wage.swift
//  app-window
//
//  Created by Memet RIZA on 10/02/2018.
//  Copyright © 2018 Memet RIZA. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
