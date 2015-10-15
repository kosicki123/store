//
//  LoginViewController.swift
//  store
//
//  Created by Renan Kosicki on 15/10/15.
//  Copyright © 2015 Renan Kosicki. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login(sender: AnyObject) {
        guard validateFields() else {
            return;
        }
        
        
    }
    
    func validateFields() -> Bool {
        if emailTextField.text!.validateLenght() && passwordTextField.text!.validateLenght() {
            return true
        }
        
        return false
    }
}
