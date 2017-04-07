//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Implemented by Lucas Cotta on 3/4/17.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var rarityDict = [UDItemRarity:Int]()
        rarityDict = [.common: 0, .uncommon: 0, .rare: 0, .legendary: 0]
        
        for item in inventory {
            switch item.rarity {
            case .common:
                rarityDict[.common]! += 1
            case .uncommon:
                 rarityDict[.uncommon]! += 1
            case .rare:
                 rarityDict[.rare]! += 1
            case .legendary:
                 rarityDict[.legendary]! += 1
            }
        }
        
        
        return rarityDict
        
    }
}
