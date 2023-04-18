//
//  LivePageCollectionViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 13/03/23.
//

import UIKit

class LivePageCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var imageLive: UIImageView!
    @IBOutlet weak var liveViewLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var logoStetus: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // MARK: - Function calling
        design()
    }
    // MARK: - Designs
    private func design(){
        logoStetus.layer.cornerRadius = 10
        logoStetus.layer.masksToBounds = true
    }
}
