//
//  MXTubeAccountTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 22/03/23.
//

import UIKit

class MXTubeAccountTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var nameLabelOne: UILabel!
    @IBOutlet weak var nameLabelTwo: UILabel!
    @IBOutlet weak var nameLabelThree: UILabel!
    @IBOutlet weak var nameLabelFour: UILabel!
    @IBOutlet weak var nameLabelFive: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
