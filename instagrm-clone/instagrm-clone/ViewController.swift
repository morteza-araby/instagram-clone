//
//  ViewController.swift
//  instagrm-clone
//
//  Created by Morteza Araby on 2016-10-24.
//  Copyright © 2016 Morteza Araby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signupOrLogin: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var changeSignupModeButton: UIButton!
    
    var signupMode = true
    
    //signup button action
    @IBAction func signupOrLogin(_ sender: AnyObject) {
        print(signupMode)
    }
    
    //login button action
    @IBAction func changeSignupMode(_ sender: AnyObject) {
        if signupMode {
            //Change to login mode
            signupOrLogin.setTitle("Log In", for: [])
            changeSignupModeButton.setTitle("Sign Up", for: [])
            
            messageLabel.text = "Don't have an account?"
            signupMode = false
        } else {
            // Change to signup mode
            signupOrLogin.setTitle("Sign Up", for: [])
            changeSignupModeButton.setTitle(("Log In"), for: [])
            
            messageLabel.text = "Already have an account?"
            signupMode = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

