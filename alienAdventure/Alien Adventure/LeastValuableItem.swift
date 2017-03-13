//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Changed by Lucas Cotta on 3/9/17.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        var leastValuableArray = [Int]()
        
        //
        // Checking if the inventory is not empty, otherwise append all values into a new array and return the least valuable item.
        if !inventory.isEmpty{
            for item in inventory{
                leastValuableArray.append(item.baseValue)
            }
            
            let index = leastValuableArray.index(of: leastValuableArray.min()!)
            
            return inventory[index!]
            
        }
        
        return nil
    }
}
