//
//  NaviViewController.swift
//  DailyPlanner
//
//  Created by Sanviraj Zahin Haque on 23/12/19.
//  Copyright © 2019 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit

class NaviViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func newNoteTapped(_ sender: Any) {
        let newNoteView = storyboard?.instantiateViewController(identifier: Constants.Storyboard.newNote) as? NewNoteViewController
        view.window?.rootViewController = newNoteView
        view.window?.makeKeyAndVisible()
    }
    
    @IBAction func NoteHistoryTapped(_ sender: Any) {
    }
    
    @IBAction func NewTaskTapped(_ sender: Any) {
    }
    
    
    @IBAction func TaskHistoryTapped(_ sender: Any) {
    }
}
