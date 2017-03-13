//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Changed by Lucas Cotta on 3/9/17.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        
        var longestWordArray = [String]()
        var longestInversedWord: String = ""
        
        //
        // Checking if the inventory is empty, otherwise append the values into a new array, find the longest word and invert it
        
        if !inventory.isEmpty{
            for index in 0..<inventory.count {
                longestWordArray.append(inventory[index].name)
            }
    
            longestInversedWord = String(longestWordArray.sorted(by: { $0.characters.count > $1.characters.count }).first!.characters.reversed())
        }
        
        return longestInversedWord
    }
}

