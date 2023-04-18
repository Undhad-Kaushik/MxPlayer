//
//  WebShowTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class WebShowTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var imageWebShow: UIImageView!
    @IBOutlet weak var nameWebShowLabel: UILabel!
    @IBOutlet weak var subtitleWebShowLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
