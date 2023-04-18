//
//  LivePageViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 11/03/23.
//

import UIKit

class LivePageViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var walletDiamondButton: UIButton!
    @IBOutlet weak var winnarButton: UIButton!
    @IBOutlet weak var idAccountButton: UIButton!
    @IBOutlet weak var offerCollectionView: UICollectionView!
    @IBOutlet weak var liveCollectionView: UICollectionView!
    
    // MARK: - Variables & Array
    var arrOfferImage: [String] = ["a1","a2","a3","a4","a5","a6","a7","a8","a9"]
    var arrLiveImage: [String] = ["L1","L2","L3","L4","L5","L6","L7","L8","L9","L10","L11","L12","L13","L14","L15","L16","L17","L18","L19","L20","L21","L22","L23","L24","L25","L26","L27","L28","L29","L30","L31","L32","L33","L34","L35","L36","L37","L38","L39","L40"]
    var arrLiveName: [String] = ["Sumit🤟","Kyati🫶Cute girl","Manasvi💋heyy","Rajavi👱‍♀️","Priya 👩‍🎤","Cute girl","Reyansh Kumar","Kavya💗⭐️","Kajal💁oyy","Jannu no Diwano","rakesh","Love u baby","Payal😇Umaa","shruti Online","Love u dika","Garima P❤️🌻","💞🦋Kasish singh🦋💞","Raj Panchani","Maya","😍Red Juliat💃","🌹Sarika🌹","Aisha saini is Live","sinu_da_san","gabharu bhai","🔥NiHAaN🔥","Nia is Live👀","target is Panding","Neha Sharmili😊","Anjaliii","Asmi_bHago","saru ksp","misti is live","🔍Mannu🤪","Pooja","Kiran","Neha","Sapna","Kinjal","Roopa","Yasmin"]
    var arrLive: [String] = ["250","48","44","503","400","89","33","108","345","143","349","236","96","673","528","238","22","5","506","467","527","247","88","374","92","385","304","86","63","42","756","837","138","654","55","283","81","423","553","321"]
    var arrStatus: [String] = ["#Travel","#Love","#Chating","#Dancing","#Creator","#Chating","#Creator","#Music","#Creator","#Travel","#Love","#Chating","#Dancing","#Travel","#Dancing","#Chating","#Creator","#Fashion","#Travel","#Creator","#Love","#Fashion","#Music","#Travel","#Fashion","#Dancing","#Love","#Travel","#Love","#Music","#Chating","#Creator","#Love","#Dancing","#Creator","#Love","#Music","#Travel","#Dancing","#Chating"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Function calling
        nibRegister()
    }
    
    // MARK: - CollectionView NibFiles
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "OfferCollectionViewCell", bundle: nil)
        offerCollectionView.register(nibFile, forCellWithReuseIdentifier: "OfferCell")
        offerCollectionView.delegate = self
        offerCollectionView.dataSource = self
        
        let nibFile2: UINib = UINib(nibName: "LivePageCollectionViewCell", bundle: nil)
        liveCollectionView.register(nibFile2, forCellWithReuseIdentifier: "cell")
        liveCollectionView.dataSource = self
        liveCollectionView.delegate = self
    }
    // MARK: - All Buttons Navigation
    @IBAction func idAcountButttonClicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: AccountViewController = storyBoard.instantiateViewController(withIdentifier: "AccountViewController") as! AccountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
}

// MARK: - Method :  CollectionViewDelegate , Datasource
extension LivePageViewController: UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.offerCollectionView{
            return arrOfferImage.count
        }else{
            return arrLiveImage.count
            return arrLive.count
            return arrStatus.count
        }
    }
    
    // MARK: - Collectionview cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.offerCollectionView{
            let cell: OfferCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "OfferCell", for: indexPath) as! OfferCollectionViewCell
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 20
            cell.layer.masksToBounds = true
            cell.imageOffer.image = UIImage(named: arrOfferImage[indexPath.row])
            return cell
        }else{
            let cell: LivePageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LivePageCollectionViewCell
            cell.nameLabel.text = arrLiveName[indexPath.row]
            cell.liveViewLabel.text = arrLive[indexPath.row]
            cell.statusLabel.text = arrStatus[indexPath.row]
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 20
            cell.layer.masksToBounds = true
            cell.imageLive.image = UIImage(named: arrLiveImage[indexPath.row])
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.offerCollectionView{
            return CGSize(width: 380, height: 122)
        }else{
            return CGSize(width: 180, height: 256)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}
