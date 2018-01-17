//
//  CreaturePartsBody.swift
//  Evolve
//
//  Created by Frank Garcia on 1/16/18.
//  Copyright © 2018 Frank Garcia. All rights reserved.
//

import Foundation
import UIKit

class BodyAssets {
    
    var body1: CAShapeLayer {
        let bodyPath = UIBezierPath(arcCenter: CGPoint(x: creatureContainer.frame.maxX/2,y: creatureContainer.frame.maxY/2),
                                    radius: CGFloat(80),
                                    startAngle: CGFloat(0),
                                    endAngle:CGFloat(Double.pi * 2),
                                    clockwise: true)
        bodyPath.close()
        body1.path = bodyPath.cgPath
        body1.fillColor = .random()
        return body1
    }
    var body2: CAShapeLayer!
    
}
