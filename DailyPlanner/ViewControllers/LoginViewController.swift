//
//  LoginViewController.swift
//  DailyPlanner
//
//  Created by Sanviraj Zahin Haque on 17/12/19.
//  Copyright © 2019 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit
import FirebaseAuth


class LoginViewController: UIViewController {

    @IBOutlet weak var LoginMail: UITextField!
    
    @IBOutlet weak var LoginPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func LoginTapped(_ sender: Any) {
        let error = validateInputs()
        if(error){
            //error code
        }
    }
    func validateInputs()-> Bool{
        if(LoginMail.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" ||
            LoginPassword.text?.trimmingCharacters(in: .whitespacesAndNewlines)==""){
            return true
        }
        return false
    }
    
}
