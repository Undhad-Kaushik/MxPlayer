//
//  ViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 01/03/23.
//

import UIKit

class ContinewWatchingViewController: UIViewController {

    @IBOutlet weak var continewWatchingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            }
    

  
}

extension ContinewWatchingViewController: UICollectionViewDelegate , UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: ContinewWatchingCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ContinewWatchingCollectionViewCell
        return cell
    }
}

extension ContinewWatchingViewController: UICollectionViewDelegateFlowLayout{
    
}


