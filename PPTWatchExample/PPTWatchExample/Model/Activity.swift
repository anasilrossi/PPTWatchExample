//
//  Activity.swift
//  PPTWatchExample
//
//  Created by Analia on 3/4/16.
//  Copyright © 2016 Analia Rossi. All rights reserved.
//

import UIKit

class Activity: NSObject
{
    
    var name:String
    var descrip:String
    var locationDetails:String
    var locationStreetOrRoute:String
    var locationHouseNumberingOrKm:String
    var contactPhone1:String
    var website:String
    var visitingHoursString:String
    
    init(asDictionary:[String:AnyObject])
    {
        name = asDictionary["name"] as! String
        descrip = asDictionary["description"] as! String
        locationDetails = asDictionary["locationDetails"] as! String
        locationStreetOrRoute = asDictionary["locationStreetOrRoute"] as! String
        locationHouseNumberingOrKm = asDictionary["locationHouseNumberingOrKm"] as! String
        contactPhone1 = asDictionary["contactPhone1"] as! String
        website = asDictionary["website"] as! String
        visitingHoursString = asDictionary["visitingHoursString"] as! String
    }
}
