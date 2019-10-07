//
//  DailyViewController.swift
//  JustBreateApp
//
//  Created by Kevin Tanner on 10/4/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

class DailyViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var dailyImageView: UIImageView!
    @IBOutlet weak var pastEntriesTableView: UITableView!
    
    
    // MARK: - Properties
        /// MOCK DATA
        let pastDailyEntries = ["OCT 3, 2019", "OCT 2, 2019", "OCT 1, 2019", "SEP 27, 2019", "SEP 26, 2019", "SEP 24, 2019", "SEP 22, 2019", "SEP 21, 2019"]
        let randomImages: [UIImage] = [#imageLiteral(resourceName: "mountain"), #imageLiteral(resourceName: "canyonJump"), #imageLiteral(resourceName: "difficultRoads"), #imageLiteral(resourceName: "focus")]
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        pastEntriesTableView.delegate = self
        pastEntriesTableView.dataSource = self
        dailyImageView.image = randomImages.randomElement()
        dailyImageView.contentMode = .scaleAspectFill
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.pastEntriesTableView.reloadData()
    }
    
    // MARK: - Actions
    @IBAction func refreshButtonTapped(_ sender: Any) {
        dailyImageView.image = randomImages.randomElement()
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

extension DailyViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pastDailyEntries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pastDailyJournalEntry", for: indexPath)
        let entry = pastDailyEntries[indexPath.row]
        cell.textLabel?.text = entry
        return cell
    }
}
