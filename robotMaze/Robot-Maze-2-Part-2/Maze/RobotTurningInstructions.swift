//
//  RobotTurningInstructions.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 11/5/15.
//  Implemented by Lucas Cotta on 27/2/17.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func randomlyRotateRightOrLeft(_ robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        
        //
        // for debbuging purposes
        print("randomlyRotateRightOrLeft: \(randomNumber)")
        
        
        if randomNumber == 0 {
            robot.rotateRight()
        } else {
            robot.rotateLeft()
        }
    }
    
    func continueStraightOrRotate(_ robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        
        //
        // for debbuging purposes
        print("continueStraightOrRotate: \(randomNumber)")
     
        if randomNumber == 0 {
            robot.move()
        } else {
            randomlyRotateRightOrLeft(robot)
        }
    }
        
}
