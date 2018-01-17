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
        body.fillColor = .random()
        head.fillColor = .random()
        leftArm.fillColor = .random()
        rightArm.fillColor = .random()
        leftLeg.fillColor = .random()
        rightLeg.fillColor = .random()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let creature = createBaseCreature()
        generateCreature(creature: creature)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Puts the creature parts on the screen
    func generateCreature(creature: Creature) {
        self.view.layer.addSublayer(creature.body.shape)
        self.view.layer.addSublayer(creature.head.shape)
        self.view.layer.addSublayer(creature.leftArm.shape)
        self.view.layer.addSublayer(creature.rightArm.shape)
        self.view.layer.addSublayer(creature.leftLeg.shape)
        self.view.layer.addSublayer(creature.rightLeg.shape)
    }
    
    // Creates base creature
    func createBaseCreature() -> Creature {
        
        // Body
        let bodyPath = UIBezierPath(arcCenter: CGPoint(x: creatureContainer.frame.maxX/2,y: creatureContainer.frame.maxY/2),
                                    radius: CGFloat(80),
                                    startAngle: CGFloat(0),
                                    endAngle:CGFloat(Double.pi * 2),
                                    clockwise: true)
        bodyPath.close()
        body.path = bodyPath.cgPath
        body.fillColor = .random()
        let bodyPart = CreaturePartBody.init(shape: body)
        
        // Head
        let headPath = UIBezierPath()
        headPath.move(to: CGPoint(x: creatureContainer.frame.maxX, y: creatureContainer.frame.maxY))
        headPath.addLine(to: CGPoint(x: 250, y: 150))
        headPath.addLine(to: CGPoint(x: 250, y: 250))
        headPath.addLine(to: CGPoint(x: 150, y: 250))
        headPath.close()
        head.path = headPath.cgPath
        head.fillColor = .random()
        let headPart = CreaturePartHead.init(shape: head)
        
        // LeftArm
        let leftArmPath = UIBezierPath()
        leftArmPath.move(to: CGPoint(x: 50, y: 50))
        leftArmPath.addLine(to: CGPoint(x: 150, y: 50))
        leftArmPath.addLine(to: CGPoint(x: 150, y: 150))
        leftArmPath.addLine(to: CGPoint(x: 50, y: 150))
        leftArmPath.close()
        leftArm.path = leftArmPath.cgPath
        leftArm.fillColor = .random()
        let leftArmPart = CreaturePartLeftArm.init(shape: leftArm)
        
        // RightArm
        let rightArmPath = UIBezierPath()
        rightArmPath.move(to: CGPoint(x: 110, y: 110))
        rightArmPath.addLine(to: CGPoint(x: 210, y: 110))
        rightArmPath.addLine(to: CGPoint(x: 210, y: 110))
        rightArmPath.addLine(to: CGPoint(x: 110, y: 210))
        rightArmPath.close()
        rightArm.path = rightArmPath.cgPath
        rightArm.fillColor = .random()
        let rightArmPart = CreaturePartRightArm.init(shape: rightArm)
        
        // LeftLeg
        let leftLegPath = UIBezierPath()
        leftLegPath.move(to: CGPoint(x: 110, y: 110))
        leftLegPath.addLine(to: CGPoint(x: 210, y: 110))
        leftLegPath.addLine(to: CGPoint(x: 210, y: 110))
        leftLegPath.addLine(to: CGPoint(x: 110, y: 210))
        leftLegPath.close()
        leftLeg.path = leftLegPath.cgPath
        leftLeg.fillColor = .random()
        let leftLegPart = CreaturePartLeftLeg.init(shape: leftLeg)
        
        // RightLeg
        let rightLegPath = UIBezierPath()
        rightLegPath.move(to: CGPoint(x: 110, y: 110))
        rightLegPath.addLine(to: CGPoint(x: 210, y: 110))
        rightLegPath.addLine(to: CGPoint(x: 210, y: 110))
        rightLegPath.addLine(to: CGPoint(x: 110, y: 210))
        rightLegPath.close()
        rightLeg.path = rightLegPath.cgPath
        rightLeg.fillColor = .random()
        let rightLegPart = CreaturePartRightLeg.init(shape: rightLeg)
        
        baseCreature = Creature.init(body: bodyPart, head: headPart, leftArm: leftArmPart, rightArm: rightArmPart, leftLeg: leftLegPart, rightLeg: rightLegPart)
        return baseCreature
    }

}

