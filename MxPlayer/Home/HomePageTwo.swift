//
//  HomePageTwo.swift
//  MxPlayer
//
//  Created by undhad kaushik on 23/02/23.
//

import UIKit

class HomePageTwo: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var oneCollectionview: UICollectionView!
    
    // MARK: - Variables & Array
    var arrName1: [String] = ["MX Share","New Release","Music","M-Cloud","Downloader","Privacy","Video Playlist"]
    var arrImage1: [String] = ["c1","c2","c3","c4","c5","c6","c7"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nibRegister()
    }
    
    // MARK: - Collectionview Nibfile
    func nibRegister(){
        let nibFile: UINib = UINib(nibName: "OneCollectionViewCell", bundle: nil)
        oneCollectionview.register(nibFile, forCellWithReuseIdentifier: "Ccell1")
        oneCollectionview.dataSource = self
        oneCollectionview.delegate = self
    }
}

// MARK: - Method :  CollectionViewDelegate , Datasource
extension HomePageTwo: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrName1.count
        return arrImage1.count
    }
    
    // MARK: - Collectionview cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: OneCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell1", for: indexPath) as! OneCollectionViewCell
        var oneCName = arrName1[indexPath.row]
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
        cell.nameLable.text = arrName1[indexPath.row]
        cell.oneImage.image = UIImage(named: arrImage1[indexPath.row])
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}
