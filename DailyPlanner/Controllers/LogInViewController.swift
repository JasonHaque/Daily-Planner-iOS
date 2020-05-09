//
//  LogInViewController.swift
//  DailyPlanner
//
//  Created by Sanviraj Zahin Haque on 8/5/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    //IB connection outletds
    @IBOutlet weak var EmailAddressField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    @IBOutlet weak var LoginLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        LoginLabel.alpha = 0
    }
    

    

}
