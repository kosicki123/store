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
    
    //MARK: - Lifecycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - TouchesDelegate -

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    //MARK: - IBActions -

    @IBAction func login(sender: AnyObject) {
        guard validateFields() else {
            return;
        }
        
        LoginStore.loginWithUsername(emailTextField.text!, password: passwordTextField.text!)
    }
    
    //MARK: - Validation -
    
    func validateFields() -> Bool {
        if emailTextField.text!.isEmpty && passwordTextField.text!.isEmpty {
            return false
        }
        
        return true
    }
}
