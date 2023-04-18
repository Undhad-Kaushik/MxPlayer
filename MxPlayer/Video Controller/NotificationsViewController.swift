//
//  NotificationsViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 25/02/23.
//

import UIKit
import WebKit

class NotificationsViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var webCollection: UICollectionView!
    
    // MARK: - Variables & Array
    let arrWeb: [String] = ["https://clideo.com/editor/merge-video","https://youtu.be/GN7kOL63dfE","https://youtu.be/PBt0Uw_EExE","https://youtu.be/E-vYa8aRX4A","https://youtu.be/XXpqvGqgti4"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Method :  CollectionViewDelegate , Datasource
extension NotificationsViewController: UICollectionViewDelegate , UICollectionViewDelegateFlowLayout , UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrWeb.count
    }
    
    // MARK: - Collectionview cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellurl", for: indexPath) as! UrlCollectionViewCell
        cell.web.loadRequest(URLRequest(url: URL(string: arrWeb[indexPath.row])!))
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 200)
    }
}
