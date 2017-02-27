//
//  ControlCenter.swift
//  Pirate Fleet
//
//  Created by Jarrod Parkes on 9/2/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

struct GridLocation {
    let x: Int
    let y: Int
}

struct Ship {
    let length: Int
    let location: GridLocation
    let isVertical: Bool
}

struct Mine: _Mine_ {
    let location: GridLocation
    let explosionText: String
}

class ControlCenter {
    
    func addShipsAndMines(_ human: Human) {
        //
        // instantiating and adding 1 small, 2 mediums, 1 large, and 1 extra-lage ship.
        
        let smallShip = Ship(length: 2, location: GridLocation(x:0, y:0), isVertical: false)
        human.addShipToGrid(smallShip)
        
        let mediumShip = Ship(length: 3, location: GridLocation(x:1, y:1), isVertical: false)
        human.addShipToGrid(mediumShip)
        
        let mediumShip1 = Ship(length: 3, location: GridLocation(x:2, y:2), isVertical: false)
        human.addShipToGrid(mediumShip1)
        
        let largeShip = Ship(length: 4, location: GridLocation(x:3, y:3), isVertical: false)
        human.addShipToGrid(largeShip)
        
        let extraLargeShip = Ship(length: 5, location: GridLocation(x:1, y:4), isVertical: false)
        human.addShipToGrid(extraLargeShip)
        
        //
        // instantiating and adding 2 mines into the grid.
        let firstMine = Mine(location: GridLocation(x:0, y:3), explosionText: "Boom")
        human.addMineToGrid(firstMine)
        
        let secondMine = Mine(location: GridLocation(x:4, y:6), explosionText: "Mine, my friend. BOOM!")
        human.addMineToGrid(secondMine)
        
    }
    
    func calculateFinalScore(_ gameStats: GameStats) -> Int {
        
        var finalScore: Int
        finalScore = 0 
        
        finalScore = (gameStats.numberOfHitsOnEnemy * gameStats.sinkBonus) + ( (5 - gameStats.humanShipsSunk) * gameStats.shipBonus) - ( (gameStats.numberOfMissesByHuman + gameStats.numberOfHitsOnEnemy) * gameStats.guessPenalty )
        
        return finalScore
    }
}
