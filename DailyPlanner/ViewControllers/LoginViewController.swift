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
        if(error != nil){
            showError(message: error!)
        }
        else{
            loadViews()
            let email = LoginMail.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let pass = LoginPassword.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            Auth.auth().signIn(withEmail: email, password: pass) { (result, error) in
                if(error != nil){
                    self.showError(message: "Could not log in")
                }
                self.transitionHome()
            }
        }
    }
    func validateInputs()-> String?{
        if(LoginMail.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" ||
            LoginPassword.text?.trimmingCharacters(in: .whitespacesAndNewlines)==""){
            return "Fill up the fields properly"
        }
        return nil
    }
    
    func showError(message:String){
        LoginError.text=message
        LoginError.alpha=1
    }
    
    func transitionHome(){
       let homeView = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        view.window?.rootViewController = homeView
        view.window?.makeKeyAndVisible()
    }
    
}
