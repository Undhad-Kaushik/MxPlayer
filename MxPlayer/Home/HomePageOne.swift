//
//  ViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 16/02/23.
//

import UIKit

class HomePageOne: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var oneTableView: UITableView!
    @IBOutlet weak var recentVideosLabel: UILabel!
    @IBOutlet weak var twoCollectionView: UICollectionView!
    @IBOutlet weak var oneCollectionView: UICollectionView!
    @IBOutlet weak var navigateupButton: UIButton!
    @IBOutlet weak var folderLabel: UILabel!
    @IBOutlet weak var liveButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var viewManuButton: UIButton!
    @IBOutlet weak var moreOptionsButton: UIButton!
    
    // MARK: - Variables & Array
    var arrName1: [String] = ["MX Share","New Release","Music","M-Cloud","Downloader","Privacy","Video Playlist"]
    var arrImage1: [String] = ["c1","c2","c3","c4","c5","c6","c7"]
    var arrImage2: [String] = ["c11","c12","c13","c14","c15","c16","c17"]
    var arrTableName1: [String] = ["Movie","Download","Audio","Camara","Creative","GB Whatsapp" ,"Whtasapp","Screen Recorder","Snap chet","Telegram","videos","Vidmet","Edited Image"]
    var newNameText: UITextField?
    var moreButtonPopup: MoreOptionPopView!
    var searchButtonPopup: SearchBarPopView!
    var searchFilterData: [String]!
    let searchBar = UISearchBar()
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchFilterData = arrTableName1
        setup()
    }
    
    // MARK: - All function call
    private func setup(){
        collectionViewNibRegister()
        tableviewNibRegister()
    }
    
    // MARK: - CollectionView Nibfile
    private func collectionViewNibRegister(){
        let nibFile: UINib = UINib(nibName: "OneCollectionViewCell", bundle: nil)
        oneCollectionView.register(nibFile, forCellWithReuseIdentifier: "Hcell1")
        oneCollectionView.delegate = self
        oneCollectionView.dataSource = self
        
        let twoNibFile: UINib = UINib(nibName: "TwoCollectionViewCell", bundle: nil)
        twoCollectionView.register(twoNibFile, forCellWithReuseIdentifier: "Hcell2")
        twoCollectionView.delegate = self
        twoCollectionView.dataSource = self
    }
    
    // MARK: - TableView Nibfile
    private func tableviewNibRegister(){
        let nibFile: UINib = UINib(nibName: "OneTableViewCell", bundle: nil)
        oneTableView.register(nibFile, forCellReuseIdentifier: "HTcell1")
        oneTableView.delegate = self
        oneTableView.dataSource = self
        oneTableView.separatorStyle = .none
    }
    
    // MARK: - All Buttons Navigation
    @IBAction func moreOptionButtonTapped(_ sender: UIButton) {
        self.moreButtonPopup = MoreOptionPopView(frame: self.view.frame, inView: self)
        moreButtonPopup.refreshButton?.addTarget(self, action: #selector(doneButtonTapped), for: .touchUpInside)
        self.view.addSubview(moreButtonPopup)
    }
    
    @objc func doneButtonTapped(){
        self.moreButtonPopup.removeFromSuperview()
    }
    
    @IBAction func liveButtonTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let livePageJuped: VideoViewController = storyboard.instantiateViewController(withIdentifier: "VideoViewController") as! VideoViewController
        navigationController?.pushViewController(livePageJuped, animated: true)
    }
    
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        self.searchButtonPopup = SearchBarPopView(frame: self.view.frame, inView: self)
        searchButtonPopup.cancelButton?.addTarget(self, action: #selector(searchDoneButtonTapped), for: .touchUpInside)
        self.view.addSubview(searchButtonPopup)
    }
    
    @objc func searchDoneButtonTapped(){
        self.searchButtonPopup.removeFromSuperview()
    }
    
    @IBAction func navigationButtonclicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let livePageJuped: HomeApiViewController = storyboard.instantiateViewController(withIdentifier: "HomeApiViewController") as! HomeApiViewController
        navigationController?.pushViewController(livePageJuped, animated: true)
    }
}

// MARK: - Method :  CollectionViewDelegate , Datasource
extension HomePageOne: UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.oneCollectionView{
            return arrImage1.count
            return arrName1.count
        } else {
            return arrImage2.count
            return searchFilterData.count
        }
    }
    
    // MARK: - Collectionview cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.oneCollectionView{
            let cell: OneCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Hcell1", for: indexPath) as! OneCollectionViewCell
            var oneCName = arrName1[indexPath.row]
            cell.layer.cornerRadius = 20
            cell.layer.masksToBounds = true
            cell.layer.borderWidth = 0.5
            cell.nameLable.text = arrName1[indexPath.row]
            cell.oneImage.image = UIImage(named: arrImage1[indexPath.row])
            return cell
        } else {
            let cell: TwoCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Hcell2", for: indexPath) as! TwoCollectionViewCell
            let serch =  searchFilterData[indexPath.row]
            cell.layer.cornerRadius = 10
            cell.layer.masksToBounds = true
            cell.layer.borderWidth = 0.5
            cell.twoImage.image = UIImage(named: arrImage2[indexPath.row])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.reloadData()
    }
}

// MARK: - Method: CollectionViewDelegateFlowLayout
extension HomePageOne: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 160)
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension HomePageOne: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTableName1.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: OneTableViewCell = tableView.dequeueReusableCell(withIdentifier: "HTcell1", for: indexPath) as! OneTableViewCell
        var folderName = arrTableName1[indexPath.row]
        cell.tNameLable.text = "\(arrTableName1[indexPath.row])"
        cell.layer.cornerRadius = 25
        cell.layer.masksToBounds = true
        cell.layer.borderWidth = 0.5
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nameText = arrTableName1[indexPath.row]
        let alert = UIAlertController(title: "Edit Opratioin", message: "Edit name of folders", preferredStyle: .alert)
        let update = UIAlertAction(title: "Update", style: .default){ action in
            let updateName = self.newNameText?.text!
            self.arrTableName1[indexPath.row] = updateName!
            DispatchQueue.main.async {
                self.oneTableView.reloadData()
                print("Data has been updated in Table view")
            }
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel){ action in
            print("Edit Opration Cancelled by users")
        }
        alert.addAction(update)
        alert.addAction(cancel)
        alert.addTextField{ textfield in
            self.newNameText = textfield
            self.newNameText?.placeholder = "Update Folder name here"
            self.newNameText?.text = nameText
        }
        self.present(alert,animated: true,completion: nil)
    }
}

// MARK: - Method: SearchBarDelegate
extension HomePageOne: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchFilterData = []
        if searchText == ""{
            searchFilterData = arrTableName1
        }
        for index in arrTableName1{
            if index.uppercased().contains(searchText.uppercased()){
                searchFilterData.append(index)
            }
        }
        for index in arrTableName1{
            if index.lowercased().contains(searchText.lowercased()){
                searchFilterData.append(index)
            }
        }
        self.oneTableView.reloadData()
    }
}
