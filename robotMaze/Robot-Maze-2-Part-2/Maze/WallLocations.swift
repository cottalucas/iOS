//
//  CollectingDataAboutWalls.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 11/6/15.
//  Implemented by Lucas Cotta on 27/2/17.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    // MARK: Function - Check if the robot is facing a wall
    
    func isFacingWall(_ robot: ComplexRobotObject, direction: MazeDirection) -> Bool {
        
        let cell = mazeController.currentCell(robot)
        var isWall: Bool = false
        
        //
        // Fore debugging purposes
        print("cell above robot?: \(cell.top)")
        print("cell below robot?: \(cell.bottom)")
        print("cell to left of robot?: \(cell.left)")
        print("cell to right of robot?: \(cell.right)")
        
        //
        //Check the direction that the robot is torwards to further check if he is facing a wall
        
        switch(direction) {
        case .up:
            if cell.top {
                isWall = true
            }
        case .down:
            if cell.bottom {
                isWall = true
            }
        case .left:
            if cell.left {
                isWall = true
            }
        case .right:
            if cell.right{
                isWall = true
            }
        }
        
        return isWall
    }
    
    // MARK: Function - Check how many walls are around the robot to implement the heuristic
    
    func checkWalls(_ robot:ComplexRobotObject) -> (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) {
        var numberOfWalls = 0
        let cell = mazeController.currentCell(robot)
        
        //
        // Check is there is a wall at the top, right, down & left of the current cell
        let isWallUp = cell.top
        if isWallUp {
            numberOfWalls += 1
        }

        let isWallRight = cell.right
        if isWallRight {
            numberOfWalls += 1
        }
        
        let isWallLeft = cell.left
        if isWallLeft {
            numberOfWalls += 1
        }
        
        let isWallBottom = cell.bottom
        if isWallBottom {
            numberOfWalls += 1
        }

        //
        // Return a tuple representing the bools for top, right, down & left, and the number of walls
        return (isWallUp, isWallRight, isWallLeft, isWallBottom, numberOfWalls)
    }
}
