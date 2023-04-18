//
//  AccountViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 13/03/23.
//

import UIKit

class AccountViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var accountNameLabel: UILabel!
    @IBOutlet weak var accountImage: UIImageView!
    @IBOutlet weak var editProfileButton: UIButton!
    @IBOutlet weak var followersButton: UIButton!
    @IBOutlet weak var followingButton: UIButton!
    @IBOutlet weak var privilagisButton: UIButton!
    @IBOutlet weak var familybutton: UIButton!
    @IBOutlet weak var rechargeView: UIView!
    @IBOutlet weak var rechargeButton: UIButton!
    @IBOutlet weak var shopButton: UIButton!
    @IBOutlet weak var myBagButton: UIButton!
    @IBOutlet weak var shopImage: UIImageView!
    @IBOutlet weak var myBagImage: UIImageView!
    @IBOutlet weak var userLavelImage: UIImageView!
    @IBOutlet weak var userLavelButton: UIButton!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Function calling
        design()
    }
    
    // MARK: - Designs
    private func design(){
        accountImage.layer.cornerRadius = 50
        accountImage.layer.masksToBounds = true
        accountImage.layer.borderWidth = 0.3
        
        followersButton.layer.cornerRadius = 20
        followersButton.layer.masksToBounds = true
        
        followingButton.layer.cornerRadius = 20
        followingButton.layer.masksToBounds = true
        
        familybutton.layer.cornerRadius = 20
        familybutton.layer.masksToBounds = true
        
        privilagisButton.layer.cornerRadius = 20
        privilagisButton.layer.masksToBounds = true
        
        rechargeView.layer.cornerRadius = 20
        rechargeView.layer.masksToBounds = true
        
        rechargeButton.layer.cornerRadius = 10
        rechargeButton.layer.masksToBounds = true
        
        shopButton.layer.cornerRadius = 10
        shopButton.layer.masksToBounds = true
        shopImage.layer.cornerRadius = 10
        shopImage.layer.masksToBounds = true
        
        myBagButton.layer.cornerRadius = 10
        myBagButton.layer.masksToBounds = true
        myBagImage.layer.cornerRadius = 10
        myBagImage.layer.masksToBounds = true
        
        userLavelImage.layer.cornerRadius = 10
        userLavelImage.layer.masksToBounds = true
        userLavelButton.layer.cornerRadius = 10
        userLavelButton.layer.masksToBounds = true
    }
    
    // MARK: - All Buttons Navigation
    @IBAction func editProfileButtonClicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: EditAcoountViewController = storyBoard.instantiateViewController(withIdentifier: "EditAcoountViewController") as! EditAcoountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func followersButtonClicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: EditAcoountViewController = storyBoard.instantiateViewController(withIdentifier: "EditAcoountViewController") as! EditAcoountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func followingButtonClicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: EditAcoountViewController = storyBoard.instantiateViewController(withIdentifier: "EditAcoountViewController") as! EditAcoountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func svipPrivilageButtonClicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: EditAcoountViewController = storyBoard.instantiateViewController(withIdentifier: "EditAcoountViewController") as! EditAcoountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func familyButtonClicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: EditAcoountViewController = storyBoard.instantiateViewController(withIdentifier: "EditAcoountViewController") as! EditAcoountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func rechargeButtonClicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: EditAcoountViewController = storyBoard.instantiateViewController(withIdentifier: "EditAcoountViewController") as! EditAcoountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func shopButtonClicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: EditAcoountViewController = storyBoard.instantiateViewController(withIdentifier: "EditAcoountViewController") as! EditAcoountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func myBagButtonClicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: EditAcoountViewController = storyBoard.instantiateViewController(withIdentifier: "EditAcoountViewController") as! EditAcoountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func userLavelButtonClicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: EditAcoountViewController = storyBoard.instantiateViewController(withIdentifier: "EditAcoountViewController") as! EditAcoountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
}
