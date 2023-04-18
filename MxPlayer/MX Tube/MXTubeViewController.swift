//
//  MXTubeViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 21/03/23.
//

import UIKit

class MXTubeViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var mxTubeAccountButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var mxTubesearchButton: UIButton!
    @IBOutlet weak var mxTubeCollectionViewOne: UICollectionView!
    @IBOutlet weak var tableViewOne: UITableView!
    
    // MARK: - Variables & Array
    var arrNameOneCollection: [String] = ["All", "Movies", "Music" , "Dance" , "UrduDrama", "Cricket" , "Turkish Drama" , "Pranks", "Cooking", "Football", "Devotional", "Vlogs", "Trailers"]
    var arrTableImage: [String] = ["E1","E2","E3","E4","E5","E6","E7","E8","E9","E10"]
    var arrLogoImage: [String] = ["E11","E12","E13","E14","E15","E16","E17","E18","E19","E20"]
    var arrTableName: [String] = ["The Dark Knight (2008)","Justice League Dark: Apokolips War (Video 2020)","Venom: Let There Be Carnage","Seventh Son (2014)","London Has Fallen (2016)" , "Brahmāstra: Part One – Shiva (2022)","Avatar: The Way of Water (2009)","Goliyon Ki Raasleela Ram-Leela (2013)" , "Shaakuntalam (2023)" , "I, Frankenstein (2014)"]
    var arrTitle: [String] = ["K Drama Hub","Mozo Entertainment", "New Hindi Movie", "Mozo Entertainment","Goldmines","Rudransh Entertainment","Cine Prime World","Hungama","Natural Moviews Pvt Ltd","Pocket Films"]
    var arrViews: [String] = ["240.1K Views","1.2M Views","268.1K Views","3.1M Views","10.4M Views","480.6K Views","1.5M Views","790.3K Views","984.5K Views","540K Views"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - All function call
        nib()
    }
    
    // MARK: - CollectionView Nibfile
    private func nib(){
        mxTubeCollectionViewOne.delegate = self
        mxTubeCollectionViewOne.dataSource = self
        
        let nibFile: UINib = UINib(nibName: "OneMXTubeTableViewCell", bundle: nil)
        tableViewOne.register(nibFile, forCellReuseIdentifier: "MXTabelCell1")
        tableViewOne.delegate = self
        tableViewOne.dataSource = self
        tableViewOne.separatorStyle = .none
    }
    
    // MARK: - All Buttons Navigation
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyBoard.instantiateViewController(withIdentifier: "AccountMXTubeViewController") as! AccountMXTubeViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func videoButtonclicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyBoard.instantiateViewController(withIdentifier: "VideoMXTubeViewController") as! VideoMXTubeViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func accountMxTubeButtonClicked(_ sender: UIButton) {
        
    }
}

// MARK: - Method :  CollectionViewDelegate , Datasource
extension MXTubeViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrNameOneCollection.count
    }
    
    // MARK: - Collectionview cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MXCell1", for: indexPath) as! FirstMXTubeCollectionViewCell
        cell.firstNameLabel.text = arrNameOneCollection[indexPath.row]
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 45)
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension MXTubeViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTableImage.count
        return arrLogoImage.count
        return arrTableName.count
        return arrTitle.count
        return arrViews.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: OneMXTubeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MXTabelCell1", for: indexPath) as! OneMXTubeTableViewCell
        cell.movieNameLabel.text = arrTableName[indexPath.row]
        cell.titleLabel.text = arrTitle[indexPath.row]
        cell.viewLabel.text = arrViews[indexPath.row]
        cell.logoImage.image = UIImage(named: arrLogoImage[indexPath.row])
        cell.tabelMXImage.image = UIImage(named: arrTableImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 275
    }
}
