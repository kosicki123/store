//
//  Credential.swift
//  store
//
//  Created by Renan Kosicki on 16/10/15.
//  Copyright © 2015 Renan Kosicki. All rights reserved.
//

import UIKit
import Alamofire

class Credential: NSObject {
    var username: String
    var password: String

    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

extension Credential {
    var encodeJSON: Dictionary<String, String> {
        return ["username": username, "password": password]
    }
}