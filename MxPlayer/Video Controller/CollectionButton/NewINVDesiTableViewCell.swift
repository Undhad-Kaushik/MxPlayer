//
//  NewINVDesiTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class NewINVDesiTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var imageNewInVDesi: UIImageView!
    @IBOutlet weak var nameNewInVDesiLabel: UILabel!
    @IBOutlet weak var subTitleNewInVDesiLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
