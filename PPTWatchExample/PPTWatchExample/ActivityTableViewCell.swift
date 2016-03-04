//
//  ActivityTableViewCell.swift
//  PPTWatchExample
//
//  Created by Analia on 3/4/16.
//  Copyright © 2016 Analia Rossi. All rights reserved.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {
    
    @IBOutlet var lbl_nameActivity:UILabel!
    @IBOutlet var lbl_fecha:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }
    func configureLabelWhit(activity:Activity)
    {
        lbl_nameActivity.text = activity.name

        lbl_fecha.text = activity.visitingHoursString
    }

  
}
