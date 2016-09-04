//
//  CustomeTVC.swift
//  SecondApp
//
//  Created by Roque Rueda on 27/08/16.
//  Copyright © 2016 ST. All rights reserved.
//

import UIKit

class CustomTVC: UITableViewCell {
    
    @IBOutlet weak var title    : UILabel!
    @IBOutlet weak var subtitle : UILabel!
    @IBOutlet weak var icon     : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
