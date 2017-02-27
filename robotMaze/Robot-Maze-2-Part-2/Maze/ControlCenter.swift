//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Implemented by Lucas Cotta on 27/2/17.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {

    var mazeController: MazeController!
    
    // MARK: Basic heuristic, which determines whether how the IA robot will move.

    func moveComplexRobot(_ myRobot: ComplexRobotObject) {
      
        //
        // Check if the robot is facing a wall or not
        let robotIsBlocked = isFacingWall(myRobot, direction: myRobot.direction)

        //
        // Getting information about the walls around the robot
        let myWallInfo = checkWalls(myRobot)
        print(myWallInfo)
        
        //
        // Categorize the robot's current location based on the number of walls
        let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
        let isTwoWayPath = (myWallInfo.numberOfWalls == 2)
        let isDeadEnd = (myWallInfo.numberOfWalls == 3)
    
        //
        // If the robot encounters a three way junction and there IS a wall ahead, it should randomly rotate right or left.
        if isThreeWayJunction && robotIsBlocked {
            randomlyRotateRightOrLeft(myRobot)
        } else if isThreeWayJunction && !robotIsBlocked {
            continueStraightOrRotate(myRobot)
        }
        
        if isTwoWayPath && robotIsBlocked {
            randomlyRotateRightOrLeft(myRobot)
        } else if isTwoWayPath && !robotIsBlocked {
            continueStraightOrRotate(myRobot)
        }
        
        if isDeadEnd && robotIsBlocked {
            randomlyRotateRightOrLeft(myRobot)
        } else if isDeadEnd && !robotIsBlocked {
            continueStraightOrRotate(myRobot)
        }

    }
    
    func previousMoveIsFinished(_ robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
}
