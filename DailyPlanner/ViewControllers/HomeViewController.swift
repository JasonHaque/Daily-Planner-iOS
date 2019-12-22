//
//  HomeViewController.swift
//  DailyPlanner
//
//  Created by Sanviraj Zahin Haque on 17/12/19.
//  Copyright © 2019 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    @IBOutlet weak var UserLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViews()
    }
    
    func loadViews(){
        UserLabel.text = Auth.auth().currentUser?.email
    }
    

}
