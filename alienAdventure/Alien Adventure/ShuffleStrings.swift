//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Changed by Lucas Cotta on 3/9/17.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty {
            return true
        }
        
        if s1.characters.count + s2.characters.count == shuffle.characters.count{
            
            var oldIndex = 0
            
            //case 1
            for letter in s1.characters {
                for (index, value) in shuffle.characters.enumerated(){
                    if value == letter {
                        if index >= oldIndex {
                            oldIndex = index
                        } else {
                            return false
                        }
                    } else {
                        if shuffle.contains(String(letter)) == false {
                            return false
                        }
                    }
                }
            }
            
            oldIndex = 0
            
            //case 2
            for letter in s2.characters {
                for (index, value) in shuffle.characters.enumerated(){
                    if value == letter {
                        if index >= oldIndex {
                            oldIndex = index
                        } else {
                            return false
                        }
                    } else {
                        if shuffle.contains(String(letter)) == false {
                            return false
                        }
                    }
                }
            }
            
        } else {
            return false
        }
        
        return true
    }
}

