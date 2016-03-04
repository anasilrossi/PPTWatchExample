//
//  ApiActivity.swift
//  PPTWatchExample
//
//  Created by Analia on 3/4/16.
//  Copyright © 2016 Analia Rossi. All rights reserved.
//

import Alamofire
import UIKit
typealias APISuccessClosure = (Response<AnyObject,NSError>)->()
class ApiActivity: NSObject
{
    class var sharedInstance: ApiActivity {
        struct Static {
            static let instance: ApiActivity = ApiActivity()
        }
        return Static.instance
    }
    
    func getActivity(completionHandler:APISuccessClosure)
    {
        Alamofire.request(.POST, "http://sysadminsoftware.com/qhmdq/rest/beta/index.php/v001/betaactivities",parameters: ["token": "012345678901234567890123456789012"])
            .responseJSON(completionHandler: completionHandler)
    }
}
