//
//  SignUpViewController.swift
//  DailyPlanner
//
//  Created by Sanviraj Zahin Haque on 8/5/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    //IB outlet labels
    @IBOutlet weak var EmailAddressField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    @IBOutlet weak var ConfirmPassword: UITextField!
    @IBOutlet weak var SignUpLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        SignUpLabel.alpha = 0
    }
    

    

}
