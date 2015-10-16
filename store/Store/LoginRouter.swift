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
    case Login(credential: Credential)
    
    //MARK: URLRequestConvertible
    
    var URLRequest: NSMutableURLRequest {
        let (method, route, parameters): (Alamofire.Method, String, [String: AnyObject]?) = {
            switch self {
            case .Login(let credential):
                return (.POST, Constants.AuthorizationPath.rawValue, credential.encodeJSON)
            }
            }()
        
        return Router.encode(method, route: route, parameters: parameters).0
    }
}