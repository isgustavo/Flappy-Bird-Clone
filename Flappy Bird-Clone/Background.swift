//
//  GameScene.swift
//  Flappy Bird-Clone
//
//  Created by Gustavo F Oliveira on 10/8/15.
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//


import SpriteKit

class Background {

    private var node: Array<SKSpriteNode> = [SKSpriteNode]()
    
    init(frame: CGRect){
        
        let texture: SKTexture = SKTexture(imageNamed: "background")
        
        let movebg: SKAction = SKAction.moveByX(-texture.size().width, y: 0, duration: 9)
        let replacebg: SKAction = SKAction.moveByX(texture.size().width, y: 0, duration: 0)
        let action = SKAction.repeatActionForever(SKAction.sequence([movebg, replacebg]))
        
        let width: CGFloat = texture.size().width
        
        for var i: Int = 0; i < 3; i++ {
            
            node.append(SKSpriteNode(texture: texture))
            
            node[i].runAction(action)
            node[i].position = CGPoint(x: width/2 + width * CGFloat(i), y: CGRectGetMidY(frame))
            node[i].zPosition = -5
            node[i].size.height = frame.height
        }
        
    }

    func getNode() -> Array<SKSpriteNode> {
        return self.node
    }
    
    
}
