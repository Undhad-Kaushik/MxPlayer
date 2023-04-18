//
//  HomeApiTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 27/03/23.
//

import UIKit

class HomeApiTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var myAPIImage: UIImageView!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var launchesLabel: UILabel!
    @IBOutlet weak var featuredLabel: UILabel!
    @IBOutlet weak var spaceWebViewApi: UIWebView!

    // MARK: - Life Cycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
}
