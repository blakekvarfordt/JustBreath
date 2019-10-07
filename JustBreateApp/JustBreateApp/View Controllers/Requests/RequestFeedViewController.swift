//
//  RequestFeedViewController.swift
//  JustBreateApp
//
//  Created by Kevin Tanner on 10/4/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

class RequestFeedViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var tagsSearchBar: UISearchBar!
    @IBOutlet weak var tagsScrollView: UIScrollView!
    @IBOutlet weak var pastRequestsTableView: UITableView!
    @IBOutlet weak var requestsLabel: UILabel!
    @IBOutlet weak var rulesButton: UIButton!
    @IBOutlet weak var addNewRequestButton: UIButton!
    @IBOutlet weak var activeRequestsFeedTableView: UITableView!
    
    
    // MARK: - Lifecycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    
    @IBAction func rulesButtonTapped(_ sender: Any) {
    }
    
    @IBAction func addNewRequestButtonTapped(_ sender: Any) {
    }
    
    
    // MARK: - Custom Methods
    
    
    // MARK: - UI Adjustments



    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
