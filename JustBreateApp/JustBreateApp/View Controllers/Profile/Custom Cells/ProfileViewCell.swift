//
//  ProfileViewCell.swift
//  JustBreateApp
//
//  Created by Blake kvarfordt on 10/7/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

class ProfileViewCell: UITableViewCell {

// MARK: - Outlets
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var requestTextLabel: UILabel!
    @IBOutlet weak var requestImageView: UIImageView!
    @IBOutlet weak var numberOfResponsesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
//    var request: Request? {
//        didSet {
//            setupViews()
//        }
//    }
    
    func setupViews() {
        requestTextLabel.text = "This is the text for this request. It's amazing right?!?!?!?"
        numberOfResponsesLabel.text = "\(33)"
    }
}
