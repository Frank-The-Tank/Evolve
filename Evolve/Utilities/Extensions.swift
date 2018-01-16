//
//  Extensions.swift
//  Evolve
//
//  Created by Frank Garcia on 1/15/18.
//  Copyright © 2018 Frank Garcia. All rights reserved.
//

import Foundation
import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}

extension CGColor {
    static func random() -> CGColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0).cgColor
    }
}

