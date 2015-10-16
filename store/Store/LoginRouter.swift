//
//  LoginRouter.swift
//  store
//
//  Created by Renan Kosicki on 10/15/15.
//  Copyright © 2015 Renan Kosicki. All rights reserved.
//

import Foundation
import Alamofire

enum LoginRouter: URLRequestConvertible {
    
    //Possibility to add more routes
    case Login(username: String, password: String)
    
    // MARK: URLRequestConvertible
    
    var URLRequest: NSMutableURLRequest {
        let (method, route, parameters): (Alamofire.Method, String, [String: AnyObject]?) = {
            switch self {
            case .Login(let username, let password):
                return (.GET, Constants.AuthorizationPath.rawValue, ["username": username, "password": password])
            }
            }()
        
        return Router.encode(method, route: route, parameters: parameters).0
    }
}