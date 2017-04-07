//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Implemented by Lucas Cotta on 25/3/17
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var carbonAge = 0
        var chosenItem: UDItem? = nil

        
        //
        // It finds the oldest item from the planet Cunia
        for item in inventory {
            if planet == item.historicalData["PlanetOfOrigin"] as! String {
                if let currentCarbonAge = item.historicalData["CarbonAge"] as? Int {
                    if carbonAge < currentCarbonAge {
                        chosenItem = item
                        carbonAge = currentCarbonAge
                    }
                }
            }
        }
        
        return chosenItem
    }
}

