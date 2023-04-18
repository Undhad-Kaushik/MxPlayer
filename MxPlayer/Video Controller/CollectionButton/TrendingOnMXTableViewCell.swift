//
//  TrendingOnMXTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class TrendingOnMXTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var nameTrendingMXLabel: UILabel!
    @IBOutlet weak var imageTrendingMX: UIImageView!
    @IBOutlet weak var subTitleTrendingMXLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
