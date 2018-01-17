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
    
    private var _body: CreaturePartBody!
    private var _head: CreaturePartHead!
    private var _leftArm: CreaturePartLeftArm!
    private var _rightArm: CreaturePartRightArm!
    private var _leftLeg: CreaturePartLeftLeg!
    private var _rightLeg: CreaturePartRightLeg!
    
    var body: CreaturePartBody {
        return _body
    }
    
    var head: CreaturePartHead {
        return _head
    }
    
    var leftArm: CreaturePartLeftArm {
        return _leftArm
    }
    
    var rightArm: CreaturePartRightArm {
        return _rightArm
    }
    
    var leftLeg: CreaturePartLeftLeg {
        return _leftLeg
    }
    
    var rightLeg: CreaturePartRightLeg {
        return _rightLeg
    }
    
    init(body: CreaturePartBody, head: CreaturePartHead, leftArm: CreaturePartLeftArm, rightArm: CreaturePartRightArm, leftLeg: CreaturePartLeftLeg, rightLeg: CreaturePartRightLeg) {
        self._body = body
        self._head = head
        self._leftArm = leftArm
        self._rightArm = rightArm
        self._leftLeg = leftLeg
        self._rightLeg = rightLeg
    }
    
}



