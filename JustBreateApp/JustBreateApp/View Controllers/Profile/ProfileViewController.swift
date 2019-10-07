//
//  ProfileViewController.swift
//  JustBreateApp
//
//  Created by Kevin Tanner on 10/4/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    
    // MARK: - Setup Views
    func setupViews() {
        rankLabel.text = "Gold Rank"
        pointsLabel.text = "\(100) KP Points"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
