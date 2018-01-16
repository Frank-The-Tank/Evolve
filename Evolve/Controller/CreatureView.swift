//
//  ViewController.swift
//  Evolve
//
//  Created by Frank Garcia on 1/15/18.
//  Copyright © 2018 Frank Garcia. All rights reserved.
//

import UIKit

class CreatureViewController: UIViewController {
    
    
    // Base Creature
    var baseCreature: Creature!
    // Views
    @IBOutlet weak var creatureView: UIView!
    @IBOutlet weak var creatureContainer: UIView!
    @IBOutlet weak var navigationView: UIView!
    // Creature Sections
    var body = CAShapeLayer()
    var head = CAShapeLayer()
    var leftArm = CAShapeLayer()
    var rightArm =  CAShapeLayer()
    var leftLeg = CAShapeLayer()
    var rightLeg = CAShapeLayer()
    
    @IBAction func evolveBtnPressed(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let creature = createBaseCreature()
        self.view.layer.addSublayer(creature.body)
        self.view.layer.addSublayer(creature.head)
        self.view.layer.addSublayer(creature.leftArm)
        self.view.layer.addSublayer(creature.rightArm)
        self.view.layer.addSublayer(creature.leftLeg)
        self.view.layer.addSublayer(creature.rightLeg)
        creature.consoleTest()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Creates base creature
    func createBaseCreature() -> Creature {
        
        // Body
        let bodyPath = UIBezierPath()
        bodyPath.move(to: CGPoint(x: creatureContainer.frame.minX, y: creatureContainer.frame.minY))
        bodyPath.addLine(to: CGPoint(x: 250, y: 150))
        bodyPath.addLine(to: CGPoint(x: 250, y: 250))
        bodyPath.addLine(to: CGPoint(x: 150, y: 250))
        bodyPath.close()
        body.path = bodyPath.cgPath
        body.fillColor = .random()
        
        // Head
        let headPath = UIBezierPath()
        headPath.move(to: CGPoint(x: 150, y: 150))
        headPath.addLine(to: CGPoint(x: 250, y: 150))
        headPath.addLine(to: CGPoint(x: 250, y: 250))
        headPath.addLine(to: CGPoint(x: 150, y: 250))
        headPath.close()
        head.path = bodyPath.cgPath
        head.fillColor = .random()
        
        // LeftArm
        let leftArmPath = UIBezierPath()
        leftArmPath.move(to: CGPoint(x: 50, y: 50))
        leftArmPath.addLine(to: CGPoint(x: 150, y: 50))
        leftArmPath.addLine(to: CGPoint(x: 150, y: 150))
        leftArmPath.addLine(to: CGPoint(x: 50, y: 150))
        leftArmPath.close()
        leftArm.path = bodyPath.cgPath
        leftArm.fillColor = .random()
        
        // RightArm
        let rightArmPath = UIBezierPath()
        rightArmPath.move(to: CGPoint(x: 110, y: 110))
        rightArmPath.addLine(to: CGPoint(x: 210, y: 110))
        rightArmPath.addLine(to: CGPoint(x: 210, y: 110))
        rightArmPath.addLine(to: CGPoint(x: 110, y: 210))
        rightArmPath.close()
        rightArm.path = bodyPath.cgPath
        rightArm.fillColor = .random()
        
        // LeftLeg
        let leftLegPath = UIBezierPath()
        leftLegPath.move(to: CGPoint(x: 110, y: 110))
        leftLegPath.addLine(to: CGPoint(x: 210, y: 110))
        leftLegPath.addLine(to: CGPoint(x: 210, y: 110))
        leftLegPath.addLine(to: CGPoint(x: 110, y: 210))
        leftLegPath.close()
        leftLeg.path = bodyPath.cgPath
        leftLeg.fillColor = .random()
        
        // RightLeg
        let rightLegPath = UIBezierPath()
        rightLegPath.move(to: CGPoint(x: 110, y: 110))
        rightLegPath.addLine(to: CGPoint(x: 210, y: 110))
        rightLegPath.addLine(to: CGPoint(x: 210, y: 110))
        rightLegPath.addLine(to: CGPoint(x: 110, y: 210))
        rightLegPath.close()
        rightLeg.path = bodyPath.cgPath
        rightLeg.fillColor = .random()
        
        baseCreature = Creature.init(body: body, head: head, leftArm: leftArm, rightArm: rightArm, leftLeg: leftLeg, rightLeg: rightLeg)
        return baseCreature
    }

}

