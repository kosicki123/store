//
//  LoginStore.swift
//  store
//
//  Created by Renan Kosicki on 10/15/15.
//  Copyright © 2015 Renan Kosicki. All rights reserved.
//

import Foundation
import Alamofire

//protocol LoginDelegate {
//    func didFoundUser(user: User?);
//}

class LoginStore: NSObject {
//    static func getShotsFromPage(shotProtocol: ShotDelegate, page: Int)/* ->())*/ {
//        request(ShotsRouter.PopularShots(page: page)).responseCollection { (response: Response<[Shot], NSError>) in
//            //            print(response)
//            shotProtocol.didFoundShots(response.result.value)
//            //            return callback(shots: response.result.value, error: response.result.error)
//        }
//    }
    
    static func loginWithUsername(username: String, password: String) {
        request(LoginRouter.Login(username: username, password: password)).responseObject { (response: Response<User, NSError>) -> Void in
            
        }
    }
}
