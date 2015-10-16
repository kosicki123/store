//
//  User.swift
//  store
//
//  Created by Renan Kosicki on 15/10/15.
//  Copyright © 2015 Renan Kosicki. All rights reserved.
//

import Foundation

class User: ResponseObjectSerializable, CustomStringConvertible {
    var id: Int?
    var name: String?
    var email: String?
    
    required init?(response: NSHTTPURLResponse, representation: AnyObject) {
        id = representation.valueForKeyPath("id") as? Int
        name = representation.valueForKeyPath("name") as? String
        email = representation.valueForKeyPath("email") as? String
    }
    
    var description: String {
        return "User id = \(self.id), name = \(self.name), email = \(self.email))"
    }
}