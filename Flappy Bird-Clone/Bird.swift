//
//  GameScene.swift
//  Flappy Bird-Clone
//
//  Created by Gustavo F Oliveira on 10/8/15.
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

import SpriteKit

class Bird {
    
    private var birdSpriteNode: SKSpriteNode
    
    init(frame: CGRect) {

        let frame1: SKTexture = SKTexture(imageNamed: "flappy1")
        let frame2: SKTexture = SKTexture(imageNamed: "flappy2")
        
        let animation = SKAction.animateWithTextures([frame1, frame2], timePerFrame: 0.1)
        let makeBirdFlap = SKAction.repeatActionForever(animation)
        
        birdSpriteNode = SKSpriteNode(texture: frame1)
        
        birdSpriteNode.texture = frame1
        
        birdSpriteNode.position = CGPoint(x: CGRectGetMidX(frame), y: CGRectGetMidY(frame))
        birdSpriteNode.runAction(makeBirdFlap)
        
        birdSpriteNode.physicsBody = SKPhysicsBody(circleOfRadius: birdSpriteNode.texture!.size().height/2)
        birdSpriteNode.physicsBody!.dynamic = true
        
    }

    
    func getNode() -> SKSpriteNode {
        return self.birdSpriteNode
    }
    
    func onTap() {
        
        birdSpriteNode.physicsBody!.velocity = CGVectorMake(0, 0)
        birdSpriteNode.physicsBody!.applyImpulse(CGVectorMake(0, 50))
        
    }
  
}
