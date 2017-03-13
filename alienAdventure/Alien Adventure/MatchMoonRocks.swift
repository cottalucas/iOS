//
//  MatchMoonRocks.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Changed by Lucas Cotta on 3/9/17.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func matchMoonRocks(inventory: [UDItem]) -> [UDItem] {
        var moonRockItens: [UDItem] = []
        
        //
        // Checking if the inventory is not empty, otherwise append the values, which contain "MoonRock" as substring into a new array
        if !inventory.isEmpty {
            for item in inventory {
                if item.name.contains("MoonRock"){
                    moonRockItens.append(item)
                }
            }
        }
        return moonRockItens
    }
}

