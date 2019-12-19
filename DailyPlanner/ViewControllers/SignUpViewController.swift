//
//  SignUpViewController.swift
//  DailyPlanner
//
//  Created by Sanviraj Zahin Haque on 17/12/19.
//  Copyright © 2019 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var SignUpMail: UITextField!
    
    @IBOutlet weak var SignUpPassword: UITextField!
    
    @IBOutlet weak var ConfirmPass: UITextField!
    
    @IBOutlet weak var SIgnUpError: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViews()
    }
    
    
    func loadViews(){
        SIgnUpError.alpha=0
    }
    @IBAction func SignUpTapped(_ sender: Any) {
        let error = validateInputs()
        
        if(error != nil){
            showError (error!)
        }
        else{
            loadViews()
            let email = SignUpMail.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let pass = SignUpPassword.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            Auth.auth().createUser(withEmail: email, password: pass) { (result, error) in
                if(error != nil){
                    self.showError("Could not create user")
                }
            }
        }
    }
    
    func validateInputs()-> String?{
        if(SignUpMail.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" ||
            SignUpPassword.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" ||
            ConfirmPass.text?.trimmingCharacters(in: .whitespacesAndNewlines)==""){
            return "Fill in the fields properly to sign up"
        }
        else if(SignUpPassword.text?.trimmingCharacters(in: .whitespacesAndNewlines) != ConfirmPass.text?.trimmingCharacters(in: .whitespacesAndNewlines)){
            return "Passwords do  not match"
        }
        return nil
    }
    func showError(_ message : String){
        SIgnUpError.text=message
        SIgnUpError.alpha=1
    }
   
}
