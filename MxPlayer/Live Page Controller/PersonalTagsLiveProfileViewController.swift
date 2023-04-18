//
//  PersonalTagsLiveProfileViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 22/03/23.
//

import UIKit

class PersonalTagsLiveProfileViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var tagTitleOneLabel: UILabel!
    @IBOutlet weak var CharacriosticCollectionView: UICollectionView!
    @IBOutlet weak var tagTitleTwoLabel: UILabel!
    @IBOutlet weak var interestsCollectionView: UICollectionView!
    @IBOutlet weak var tagTitleThreeLabel: UILabel!
    @IBOutlet weak var traitCollectionView: UICollectionView!
    
    // MARK: - Variables & Array
    var arrCharacriostic: [String] = ["#active","Humourous","#Warm","#Adventure","#Easy-going","#Indoorsy","#Workaholic","#Rational","#Hombody","#Sigle","#Hilarious","#Lonely","#Shy","#Gentle"]
    var arrInterests: [String] = ["#Party","#Sport","#Music","#Gaming","#Fation","#Travel","#Entertainment","#Cooking","#Photography","#Pets","#Cosplay","#Yoga"]
    var arrTrait: [String] = ["#Muscles","#Sexy","#Tattoo","#Long hair","#Short hair","#Laughing","#Talking","#Talking","#Sleep late","#sensitive"]
    
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Function calling
        design()
        nibRegister()
    }
    
    // MARK: - Designs
    private func design(){
        tagTitleOneLabel.text = "Characriostic"
        tagTitleTwoLabel.text = "Interests"
        tagTitleThreeLabel.text = "Trait"
    }
    
    // MARK: - CollectionView NibFiles
    private func nibRegister(){
        CharacriosticCollectionView.delegate = self
        CharacriosticCollectionView.dataSource = self
        
        interestsCollectionView.dataSource = self
        interestsCollectionView.delegate = self
        
        traitCollectionView.dataSource = self
        traitCollectionView.delegate = self
    }
    
    // MARK: - All Buttons Navigation
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        
    }
}

// MARK: - Method :  CollectionViewDelegate , Datasource
extension PersonalTagsLiveProfileViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.CharacriosticCollectionView{
            return arrCharacriostic.count
        } else if collectionView == self.interestsCollectionView{
            return arrInterests.count
        } else{
            return arrTrait.count
        }
    }
    
    // MARK: - Collectionview cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.CharacriosticCollectionView{
            let cell: CharacriosticLivePageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell1", for: indexPath) as! CharacriosticLivePageCollectionViewCell
            cell.tagsOneLabel.text = arrCharacriostic[indexPath.row]
            return cell
        } else if collectionView == self.interestsCollectionView{
            let cell: InterestsLivePageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell2", for: indexPath) as! InterestsLivePageCollectionViewCell
            cell.tagsTwoLabel.text = arrInterests[indexPath.row]
            return cell
        }
        else{
            let cell: TraitLivePageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell3", for: indexPath) as! TraitLivePageCollectionViewCell
            cell.tagstThreeLabel.text = arrTrait[indexPath.row]
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.CharacriosticCollectionView{
            return CGSize(width: 80, height: 50)
        } else if collectionView == self.interestsCollectionView{
            return CGSize(width: 80, height: 50)
            
        } else{
            return CGSize(width: 80, height: 50)
            
        }
    }
}
