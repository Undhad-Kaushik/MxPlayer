//
//  KCkrezeTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class KCkrezeTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var imageimageKCKreze: UIImageView!
    @IBOutlet weak var nameimageKCKrezeLabel: UILabel!
    @IBOutlet weak var subTitleimageKCKrezeLabel: UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
