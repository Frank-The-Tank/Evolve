//
//  Creature.swift
//  Evolve
//
//  Created by Frank Garcia on 1/15/18.
//  Copyright © 2018 Frank Garcia. All rights reserved.
//

import Foundation
import UIKit

class Creature {
    
    private var _body: CAShapeLayer!
    private var _head: CAShapeLayer!
    private var _leftArm: CAShapeLayer!
    private var _rightArm: CAShapeLayer!
    private var _leftLeg: CAShapeLayer!
    private var _rightLeg: CAShapeLayer!
    
    var body: CAShapeLayer {
        return _body
    }
    
    var head: CAShapeLayer {
        return _head
    }
    
    var leftArm: CAShapeLayer {
        return _leftArm
    }
    
    var rightArm: CAShapeLayer {
        return _rightArm
    }
    
    var leftLeg: CAShapeLayer {
        return _leftLeg
    }
    
    var rightLeg: CAShapeLayer {
        return _rightLeg
    }
    
    init(body: CAShapeLayer, head: CAShapeLayer, leftArm: CAShapeLayer, rightArm: CAShapeLayer, leftLeg: CAShapeLayer,
         rightLeg: CAShapeLayer) {
        self._body = body
        self._head = head
        self._leftArm = leftArm
        self._rightArm = rightArm
        self._leftLeg = leftLeg
        self._rightLeg = rightLeg
    }
  
    func consoleTest() {
        let test: String = "test worked!"
        print(test)
    }
    
}


