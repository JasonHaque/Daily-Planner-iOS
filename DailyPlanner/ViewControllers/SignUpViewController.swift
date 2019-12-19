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
        
        if(error){
            SIgnUpError.text="Fill up the fields properly"
            SIgnUpError.alpha=1
        }
    }
    
    func validateInputs()-> Bool{
        if(SignUpMail.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" ||
            SignUpPassword.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" ||
            ConfirmPass.text?.trimmingCharacters(in: .whitespacesAndNewlines)==""){
            return true
        }
        return false
    }
   
}
