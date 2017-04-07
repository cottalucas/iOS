//
//  XORCipherKeySearch.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Implemented by Lucas Cotta on 25/3/17
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func xorCipherKeySearch(encryptedString: [UInt8]) -> UInt8 {
        
        var key: UInt8
        key = 0
        
        for x in UInt8.min..<UInt8.max {
            
            var decrypted: [UInt8]
            decrypted = [UInt8]()
            
            for character in encryptedString {
                decrypted.append(character ^ x)
            }
            
            if let decryptedString = String(bytes: decrypted,
                encoding: String.Encoding.utf8), decryptedString == "udacity" {

                key = x
            }
        }
        
        return key
    }
}

