//
//  GameScene.swift
//  Candy Crush saga
//
//  Created by Jannatun Nahar Papia  on 19/12/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var candyTapped: SKSpriteNode!
    var touched:Bool!
    var MatchedCol:[SKSpriteNode] = []
    var MatchedRow:[SKSpriteNode] = []
    var MatchedCol1:[SKSpriteNode] = []
    var MatchedRow1:[SKSpriteNode] = []
  //  var MatchedCol:[SKSpriteNode]
    
    override func didMove(to view: SKView) {
        create_arrayCandy()
    }
    
    func create_arrayCandy(){
       // let nameCandy:[String] = ["Red", "Orange", "Blue", "Green", "Purple", "Yellow"]
        for i in stride(from: self.size.width/2 + self.size.width/10/2, to: self.size.width/2, by: self.size.width/10){
            for j in stride(from: -400, to: self.size.width/10, by: self.size.width/10) {
                let name = nameCandy.randomElement()!
                let candy = SKSpriteNode(texture: SKTexture(imageNamed: name))
                candy.name = name
                candy.position = CGPoint(x: i, y: j)
                addChild(candy)
            }
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        if let candy = nodes(at: location).first as? SKSpriteNode {
            candyTapped = candy
            touched = true
        }
    }
    
    func create_candy(Matched: inout [SKSpriteNode]){
        if Matched.count >= 3{
            
            var points:[CGPoint] = []
            for candy in Matched{
                points.append(candy.position)
            }
            for candy in Matched{
                
                candy.removeFromParent()
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(200)) {[self] in
                let nameCandy: [String] = ["Red", "Orange", "Blue", "Green", "Purple", "Yellow"]
                for i in 0...points.count - 1 {
                    let name = nameCandy.randomElement()!
                    
                    if (nodes(at: points[i]).first as? SKSpriteNode) == nil{
                        let candy = SKSpriteNode(texture: SKTexture(imageNamed: name))
                        candy.name = name
                        candy.position = points[i]
                        addChild(candy)
                        
                    }
                    
                 
                }
                /*
                var points:[CGPoint] = []
                for candy in Matched{
                    points.append(candy.position)
                 */
                
            }
        }
    }
    
    
    func create_move(FromNode: SKSpriteNode, ToNode:SKSpriteNode){
        let pos1 = FromNode.position
        let pos2 = ToNode.position
        let move1 = SKAction.move(to: pos2, duration: 0.15)
        let move2 = SKAction.move(to: pos1, duration: 0.15)
        let check1 = SKAction.run { [self] in
            MatchedRow.removeAll()
            MatchedCol.removeAll()
            check(candy: FromNode, x: self.size.width/10, y: 0, candyMatched: &MatchedRow)
            check(candy: FromNode, x: 0, y: self.size.width/10, candyMatched: &MatchedCol)
            create_candy(Matched: &MatchedRow)
            create_candy(Matched: &MatchedCol)
            
            /*
            if MatchedRow.count >= 3{
                for candy in MatchedRow{
                    candy.removeFromParent()
                }
                        
            }
            
            if MatchedCol.count >= 3{
                for candy in MatchedCol{
                    candy.removeFromParent()
                }
             
                        
            }*/

        }
        let check2 = SKAction.run { [self] in
            MatchedRow1.removeAll()
            MatchedCol1.removeAll()
            check(candy: FromNode, x: self.size.width/10, y: 0, candyMatched: &MatchedRow1)
            check(candy: FromNode, x: 0, y: self.size.width/10, candyMatched: &MatchedCol1)
            create_candy(Matched: &MatchedRow1)
            create_candy(Matched: &MatchedCol1)
            /*
            if MatchedRow1.count >= 3{
                for candy in MatchedRow1{
                    candy.removeFromParent()
                }
                        
            }
            
            if MatchedCol1.count >= 3{
                for candy in MatchedCol1{
                    candy.removeFromParent()
                }
                        
            }
             */

        }
        
        let sequence1 = SKAction.sequence([move1,check1])
        let sequence2 = SKAction.sequence([move2,check2] )

        
        FromNode.run(sequence1)
        ToNode.run(sequence2)

    }
    
    func check(candy: SKSpriteNode,x:CGFloat,y:CGFloat,candyMatched:inout [SKSpriteNode]) {
        if let candyTam = nodes(at: CGPoint(x:candy.position.x + x, y: candy.position.y + y)).first as?
            SKSpriteNode{
            if !candyMatched.contains(candyTam) {
                if candyTam.name == candy.name{
                    candyMatched.append(candyTam)
                    check(candy: candyTam, x: x, y: y, candyMatched: &candyMatched)
                }
               // candyMatched.append(candyTam)
            }
        }
        
        if let candyTam = nodes(at: CGPoint(x:candy.position.x - x, y: candy.position.y - y)).first as?
            SKSpriteNode{
            if !candyMatched.contains(candyTam) {
                if candyTam.name == candy.name{
                    candyMatched.append(candyTam)
                    check(candy: candyTam, x: x, y: y, candyMatched: &candyMatched)
                }
               // candyMatched.append(candyTam)
            }
        }
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        if let candyMove = nodes(at: location).first as? SKSpriteNode {
            if candyTapped != candyMove && touched && (candyTapped.position.x == candyMove.position.x || candyTapped.position.y == candyMove.position.y){
                touched = false
                create_move(FromNode: candyTapped, ToNode: candyMove)
                
            }
        }
    }
}
