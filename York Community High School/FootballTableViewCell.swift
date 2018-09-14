//
//  FootballTableViewCell.swift
//  York Community High School
//
//  Created by Domenic Conversa on 8/2/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class FootballTableViewCell: UITableViewCell {

    @IBOutlet var date: UILabel!
    @IBOutlet var team: UILabel!
    @IBOutlet var time: UILabel!
    @IBOutlet var location: UILabel!
    @IBOutlet var home: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
