//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Implemented by Lucas Cotta on 25/3/17
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        //
        // The returning array of UDItem
        var planetItems = [UDItem]()
        
        //
        // Checking items fonr the planet "Glinda"
        for item in inventory{
            if item.historicalData["PlanetOfOrigin"] as? String == planet {
                planetItems.append(item)
            }
        }
        
        return planetItems
    }
    
}

