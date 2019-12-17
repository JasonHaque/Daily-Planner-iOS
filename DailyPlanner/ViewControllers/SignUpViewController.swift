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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SignUpTapped(_ sender: Any) {
    }
    
}
