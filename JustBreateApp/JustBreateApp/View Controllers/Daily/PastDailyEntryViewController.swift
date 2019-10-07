//
//  PastDailyEntryViewController.swift
//  JustBreateApp
//
//  Created by Apps on 10/7/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

class PastDailyEntryViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var pastDailyEntryImageView: UIImageView!
    
    // MARK - Properties
    ///Mock Data
    let randomImages: [UIImage] = [#imageLiteral(resourceName: "mountain"), #imageLiteral(resourceName: "canyonJump"), #imageLiteral(resourceName: "difficultRoads"), #imageLiteral(resourceName: "focus")]
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        pastDailyEntryImageView.image = randomImages.randomElement()
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
