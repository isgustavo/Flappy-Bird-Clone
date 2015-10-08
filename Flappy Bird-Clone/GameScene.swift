//
//  GameScene.swift
//  Flappy Bird-Clone
//
//  Created by Gustavo F Oliveira on 10/8/15.
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    private var background: Background!
    private var bird: Bird!
    
    override func didMoveToView(view: SKView) {
        
        
        background = Background(frame: self.frame)
        for node in background.getNode() {
            addChild(node)
        }
        
        bird = Bird(frame: self.frame)
        addChild(bird.getNode())
        
        let ground = SKNode()
        ground.position = CGPointMake(0, 0)
        ground.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(self.frame.size.width, 1))
        ground.physicsBody!.dynamic = false
        
        addChild(ground)
       
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       
        bird.onTap()
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
