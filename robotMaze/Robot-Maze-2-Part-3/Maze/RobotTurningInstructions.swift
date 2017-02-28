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
    
    func continueStraightOrRotate(_ robot: ComplexRobotObject, wallInfo:(up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)) {
        let randomNumber = arc4random() % 2
  
        //
        // for debbuging purposes
        print("continueStraightOrRotate: \(randomNumber)")
        
        if randomNumber == 0 {
            robot.move()
        } else {
            turnTowardClearPath(robot, wallInfo: wallInfo)
        }
    }

    func turnTowardClearPath(_ robot: ComplexRobotObject, wallInfo: (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)) {
        
        //
        // In case of three way junction there is only one wall around the robot. According to where is facing is better to turn on the junction.
        
            if robot.direction == .left && wallInfo.down {
                robot.rotateRight()
            } else if robot.direction == .up && wallInfo.left {
                robot.rotateRight()
            } else if robot.direction == .right && wallInfo.up {
                robot.rotateRight()
            } else if robot.direction == .down && wallInfo.right {
                robot.rotateRight()
            } else {
                robot.rotateLeft()
            }
    }

}
