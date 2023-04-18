//
//  OneTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 22/02/23.
//

import UIKit

class OneTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var tableImage: UIImageView!
    @IBOutlet weak var tNameLable: UILabel!
    
    // MARK: - Life Cycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
