//
//  EvergreenInMXTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class EvergreenInMXTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var imageEvergreenMX: UIImageView!
    @IBOutlet weak var nameEvergreenMXLabel: UILabel!
    @IBOutlet weak var subTitleEvergreenMXLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
