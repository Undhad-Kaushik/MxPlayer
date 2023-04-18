//
//  EditAcoountViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 20/03/23.
//

import UIKit

class EditAcoountViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameTitalLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameButton: UIButton!
    @IBOutlet weak var birthdayTitleLabel: UILabel!
    @IBOutlet weak var birthdayChooseLabel: UILabel!
    @IBOutlet weak var birthdayButton: UIButton!
    @IBOutlet weak var genderTitleLabel: UILabel!
    @IBOutlet weak var genderChooseLabel: UILabel!
    @IBOutlet weak var genderButton: UIButton!
    @IBOutlet weak var cityTitleLabel: UILabel!
    @IBOutlet weak var cityChooseLabel: UILabel!
    @IBOutlet weak var cityButton: UIButton!
    @IBOutlet weak var languageTitleLabel: UILabel!
    @IBOutlet weak var languageChooseLabel: UILabel!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var bioTitleLabel: UILabel!
    @IBOutlet weak var bioEditLabel: UILabel!
    @IBOutlet weak var bioButton: UIButton!
    @IBOutlet weak var personalTagsButton: UIButton!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Function calling
        design()
    }
    
    // MARK: - Designs
    private func design(){
        profileImage.layer.cornerRadius = 50
        profileImage.layer.masksToBounds = true
    }
    
    // MARK: - All Buttons Navigation
    @IBAction func nameButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "NameLiveViewController") as! NameLiveViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func birthdayButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "BirthdayLiveViewController") as! BirthdayLiveViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func genderButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "GenderLiveViewController") as! GenderLiveViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func cityButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "CityLiveViewController") as! CityLiveViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func languageButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "LanguageLiveViewController") as! LanguageLiveViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func bioButtonclicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "BioLiveViewController") as! BioLiveViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func addPersonalTagsBuuttonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "PersonalTagsLiveProfileViewController") as! PersonalTagsLiveProfileViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
}
