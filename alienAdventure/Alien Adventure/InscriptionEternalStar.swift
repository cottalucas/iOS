//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Changed by Lucas Cotta on 3/9/17.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        var inscriptionItens: UDItem? = nil
        
        //
        // Checking if the inventory is not empty, otherwise returns the values, which contain "THE ETERNAL STAR"
        if !inventory.isEmpty{
            for item in inventory {
                if item.inscription != nil && item.inscription!.contains("THE ETERNAL STAR") {
                    inscriptionItens = item
                }
            }
        }
        return inscriptionItens
    }
}
