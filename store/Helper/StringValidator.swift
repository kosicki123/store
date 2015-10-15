//
//  StringValidator.swift
//  store
//
//  Created by Renan Kosicki on 15/10/15.
//  Copyright © 2015 Renan Kosicki. All rights reserved.
//

import Foundation

extension String {
    func validateLenght() -> Bool {
        if self.characters.count == 0 {
            return false
        }
        
        return true
    }
}