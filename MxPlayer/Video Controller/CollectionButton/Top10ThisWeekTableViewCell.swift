//
//  Top10ThisWeekTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class Top10ThisWeekTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var imageTop10ThisWeek: UIImageView!
    @IBOutlet weak var nametop10ThisWeekLabel: UILabel!
    @IBOutlet weak var subTitleTop10thisWeekLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
