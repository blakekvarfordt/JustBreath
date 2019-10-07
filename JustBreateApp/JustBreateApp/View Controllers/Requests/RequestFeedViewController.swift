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
    @IBOutlet weak var pastRequestsTableView: UITableView!
    @IBOutlet weak var requestsLabel: UILabel!
    @IBOutlet weak var rulesButton: UIButton!
    @IBOutlet weak var addNewRequestButton: UIButton!
    @IBOutlet weak var activeRequestsFeedTableView: UITableView!
    
    
    // MARK: - Lifecycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        activeRequestsFeedTableView.delegate = self
        activeRequestsFeedTableView.dataSource = self
        pastRequestsTableView.delegate = self
        pastRequestsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pastRequestsTableView.reloadData()
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

extension RequestFeedViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == pastRequestsTableView {
            return ProfileMockDataController1.shared.mockDataObjects.count
        } else {
            return ProfileMockDataController2.shared.mockDataObjects.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == pastRequestsTableView {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "activePastRequestCell", for: indexPath) as? PastRequestsTableViewCell else { return UITableViewCell()}
        
        let request = ProfileMockDataController1.shared.mockDataObjects[indexPath.row]
        
        cell.requestLandingPad = request
        
        return cell
        
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "activeRequestCell", for: indexPath) as? ActiveRequestsTableViewCell else { return UITableViewCell()}
            
            let request = ProfileMockDataController2.shared.mockDataObjects[indexPath.row]
            
            cell.requestLandingPad = request
            
            return cell
        }
    }
    
    
}


// MARK: - Mock Data

class ProfileMockDataModel1 {
    let text: String
    let image: UIImage?
    
    init(text: String, image: UIImage?) {
        self.text = text
        self.image = image
    }
}

class ProfileMockDataController1 {
    static let shared = ProfileMockDataController1()
    
    var mockDataObjects = [ProfileMockDataModel1]()
    
    init() {
        
        let request1 = ProfileMockDataModel1(text: "#whatever #amiseeingthings #iphoneForTheWin", image: UIImage(named: "mountain"))
        let request2 = ProfileMockDataModel1(text: "#customTableViews #BadDay #WorkSucks", image: UIImage(named: "focus"))
        let request3 = ProfileMockDataModel1(text: "#DoesItWork #WAterIsLife #RAinbow", image: UIImage(named: "canyonJump"))
        
        self.mockDataObjects = [request1, request2, request3]
    }
    
    
}

class ProfileMockDataController2 {
    static let shared = ProfileMockDataController2()
    
    var mockDataObjects = [ProfileMockDataModel1]()
    
    init() {
        
        let request1 = ProfileMockDataModel1(text: "#whatever #amiseeingthings #iphoneForTheWin", image: UIImage(named: "mountain"))
        let request2 = ProfileMockDataModel1(text: "#customTableViews #BadDay #WorkSucks", image: UIImage(named: "focus"))
        let request3 = ProfileMockDataModel1(text: "#DoesItWork #WAterIsLife #RAinbow", image: UIImage(named: "canyonJump"))
        
        self.mockDataObjects = [request1, request2, request3]
    }
    
    
}
