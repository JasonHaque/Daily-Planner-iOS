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
    
    @IBOutlet weak var LoginError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViews()
        
    }
    
    func loadViews(){
        LoginError.alpha=0
    }
    
    @IBAction func LoginTapped(_ sender: Any) {
        let error = validateInputs()
        if(error){
            LoginError.text="Fill up the Fields"
            LoginError.alpha=1
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
