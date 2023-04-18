//
//  OneMXTubeTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 22/03/23.
//

import UIKit

class OneMXTubeTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var tabelMXImage: UIImageView!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var viewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
