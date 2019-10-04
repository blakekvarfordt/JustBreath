//
//  ResponseController.swift
//  JustBreateApp
//
//  Created by Apps on 10/4/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit
import CloudKit

class ResponseController {
    
    static let shared = ResponseController()
    
    let publicDB = CKContainer.default().publicCloudDatabase
    
    func createResponse(username: String, bodyText: String?, link: URL?, image: UIImage?, responseTags: [String], requestReference: CKRecord.Reference, completion: @escaping (Bool) -> Void) {
        
        let responseRecord = Response(username: username, bodyText: bodyText, image: image, link: link, responseTags: responseTags, requestReference: requestReference)
        
        let realRecord = CKRecord(response: responseRecord)
        
        self.publicDB.save(realRecord) { (record, error) in
            if let error = error {
                print("Failed to create a new response! \n Error: \(error) \n \(error.localizedDescription)")
                completion(false)
                return
            }
            
            if let record = record {
                completion(true)
            }
        }
    }
}
