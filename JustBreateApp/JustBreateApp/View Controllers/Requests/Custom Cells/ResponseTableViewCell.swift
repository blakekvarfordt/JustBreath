//
//  ResponseTableViewCell.swift
//  JustBreateApp
//
//  Created by Kevin Tanner on 10/7/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

class ResponseTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var responseImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var responseBodyLabel: UILabel!
    @IBOutlet weak var favoriteResponseButton: UIButton!
    @IBOutlet weak var flagResponseButton: UIButton!
    @IBOutlet weak var blockUserButton: UIButton!
    @IBOutlet weak var bookmarkResponseButton: UIButton!
    
    // MARK: - Lifecycle Methods

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Actions
    
    @IBAction func favoriteResponseButtonTapped(_ sender: Any) {
    }
    
    @IBAction func flagResponseButtonTapped(_ sender: Any) {
    }
    
    @IBAction func blockUserButtonTapped(_ sender: Any) {
    }
    
    @IBAction func bookmarkResponseButtonTapped(_ sender: Any) {
    }
    
    // MARK: - Custom Methods
    
    
    // MARK: - UI Adjustments




}
