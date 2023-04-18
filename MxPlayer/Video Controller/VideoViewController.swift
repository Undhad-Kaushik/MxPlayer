//
//  VideoViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 25/02/23.
//

import UIKit

class VideoViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var navigationButton: UIButton!
    @IBOutlet weak var LogoImage: UIImageView!
    @IBOutlet weak var hedingLabel: UILabel!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var notificationButton: UIButton!
    @IBOutlet weak var FirstCollectionView: UICollectionView!
    @IBOutlet weak var secondVideoCollectionView: UICollectionView!
    @IBOutlet weak var thirdVideoCollectionView: UICollectionView!
    @IBOutlet weak var fourMoreButton: UIButton!
    @IBOutlet weak var fourCollectionView: UICollectionView!
    @IBOutlet weak var fiveMoreButton: UIButton!
    @IBOutlet weak var fiveCollectionView: UICollectionView!
    @IBOutlet weak var sixMoreButton: UIButton!
    @IBOutlet weak var sixCollectionView: UICollectionView!
    @IBOutlet weak var savenMoreButton: UIButton!
    @IBOutlet weak var savenCollectionView: UICollectionView!
    @IBOutlet weak var eightMoreButton: UIButton!
    @IBOutlet weak var eightCollectionView: UICollectionView!
    @IBOutlet weak var nineMoreButton: UIButton!
    @IBOutlet weak var nineCollectonView: UICollectionView!
    @IBOutlet weak var tenMoreButton: UIButton!
    @IBOutlet weak var tenCollectionView: UICollectionView!
    @IBOutlet weak var elevanMoreButton: UIButton!
    @IBOutlet weak var elevanCollectionView: UICollectionView!
    @IBOutlet weak var twelveMoreButton: UIButton!
    @IBOutlet weak var twelwCollectionView: UICollectionView!
    @IBOutlet weak var thrteenMoreButton: UIButton!
    @IBOutlet weak var thrteenCollectionView: UICollectionView!
    @IBOutlet weak var forteenMoreButton: UIButton!
    @IBOutlet weak var forteenCollectionView: UICollectionView!
    @IBOutlet weak var fifteenMoreButton: UIButton!
    @IBOutlet weak var fifteenCollectionView: UICollectionView!
    @IBOutlet weak var sixteenMoreButton: UIButton!
    @IBOutlet weak var sixteenCollectionView: UICollectionView!
    
    // MARK: - Variables & Array
    var arrName1: [String] = ["🛖","SHOWS","MOVIES","NEW & FREE🔥","MX GOLD ⭐️","MX VDESI","PODCAST🎙️"]
    var arrImage2: [String] = ["c11","c12","c13","c14","c15","c16","c17"]
    var arrimage3: [String] = ["MyList","Downloads","upcoming","c13","MXTube1","podcast","live","game"]
    var arrName3: [String] = ["My List","Downloads","Upcoming","New Release","MX Tube","Podcast","Live","Game"]
    var arrImage4: [String] = ["c11","c12","c13","c14","c15","c16","c55","c76","c49","c40"]
    var arrImage5: [String] = ["c17","c18","c19","c20","c21","c22","c33","c76","c87","c28"]
    var arrImage6: [String] = ["c23","c24","c25","c26","c27","c28","c71","c83","c43","c11"]
    var arrImage7: [String] = ["c29","c30","c31","c32","c33","c34","c67","c63","c55","c77"]
    var arrImage8: [String] = ["c35","c36","c37","c38","c38","c40","c88","c15","c24","c22"]
    var arrImage9: [String] = ["c41","c42","c43","c44","c45","c46","c28","c31","c18","c23"]
    var arrImage10: [String] = ["c47","c48","c49","c50","c51","c52","c22","c78","c86","c90"]
    var arrImage11: [String] = ["c53","c54","c55","c56","c57","c58","c44","c22","c33","c46"]
    var arrImage12: [String] = ["c59","c60","c61","c62","c63","c64","c22","c28","c13","c77"]
    var arrImage13: [String] = ["c65","c66","c67","c68","c69","c70","c44","c33","c22","c11"]
    var arrImage14: [String] = ["c71","c72","c73","c74","c75","c76","c55","c45","c35","c25"]
    var arrImage15: [String] = ["c77","c78","c79","c80","c81","c82","c83","c84","c85","c86"]
    var arrImage16: [String] = ["c20","c18","c22","c33","c44","c55","c66","c77","c88","c49"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        FirstCollectionView.delegate = self
        FirstCollectionView.dataSource = self
        setup()
    }
    
    // MARK: - Function calling
    private func setup(){
        videoNibRegister()
    }
    
    // MARK: - CollectionView NibFiles
    private func videoNibRegister(){
        let nibFile: UINib = UINib(nibName: "VideoOneCollectionViewCell", bundle: nil)
        FirstCollectionView.register(nibFile, forCellWithReuseIdentifier: "Ccell1")
        
        let nibFile2: UINib = UINib(nibName: "VideoTwoCollectionViewCell", bundle: nil)
        secondVideoCollectionView.register(nibFile2, forCellWithReuseIdentifier: "Ccell2")
        secondVideoCollectionView.delegate = self
        secondVideoCollectionView.dataSource = self
        
        let nibFile3: UINib = UINib(nibName: "VideoThreeCollectionViewCell", bundle: nil)
        thirdVideoCollectionView.register(nibFile3, forCellWithReuseIdentifier: "Ccell3")
        thirdVideoCollectionView.delegate = self
        thirdVideoCollectionView.dataSource = self
        
        let nibFile4: UINib = UINib(nibName: "VideoFourCollectionViewCell", bundle: nil)
        fourCollectionView.register(nibFile4, forCellWithReuseIdentifier: "Ccell4")
        fourCollectionView.delegate = self
        fourCollectionView.dataSource = self
        
        let nibFile5: UINib = UINib(nibName: "VideoFiveCollectionViewCell", bundle: nil)
        fiveCollectionView.register(nibFile5, forCellWithReuseIdentifier: "Ccell5")
        fiveCollectionView.delegate = self
        fiveCollectionView.dataSource = self
        
        let nibFile6: UINib = UINib(nibName: "VideoSixCollectionViewCell", bundle: nil)
        sixCollectionView.register(nibFile6, forCellWithReuseIdentifier: "Ccell6")
        sixCollectionView.delegate = self
        sixCollectionView.dataSource = self
        
        let nibFile7: UINib = UINib(nibName: "VideoSavenCollectionViewCell", bundle: nil)
        savenCollectionView.register(nibFile7, forCellWithReuseIdentifier: "Ccell7")
        savenCollectionView.delegate = self
        savenCollectionView.dataSource = self
        
        let nibFile8: UINib = UINib(nibName: "VideoEightCollectionViewCell", bundle: nil)
        eightCollectionView.register(nibFile8, forCellWithReuseIdentifier: "Ccell8")
        eightCollectionView.delegate = self
        eightCollectionView.dataSource = self
        
        let nibFile9: UINib = UINib(nibName: "VideoNineCollectionViewCell", bundle: nil)
        nineCollectonView.register(nibFile9, forCellWithReuseIdentifier: "Ccell9")
        nineCollectonView.delegate = self
        nineCollectonView.dataSource = self
        
        let nibFile10: UINib = UINib(nibName: "VideoTenCollectionViewCell", bundle: nil)
        tenCollectionView.register(nibFile10, forCellWithReuseIdentifier: "Ccell10")
        tenCollectionView.delegate = self
        tenCollectionView.dataSource = self
        
        
        let nibFile11: UINib = UINib(nibName: "VideoElevenCollectionViewCell", bundle: nil)
        elevanCollectionView.register(nibFile11, forCellWithReuseIdentifier: "Ccell11")
        elevanCollectionView.delegate = self
        elevanCollectionView.dataSource = self
        
        let nibFile12: UINib = UINib(nibName: "VideoTwelveCollectionViewCell", bundle: nil)
        twelwCollectionView.register(nibFile12, forCellWithReuseIdentifier: "Ccell12")
        twelwCollectionView.delegate = self
        twelwCollectionView.dataSource = self
        
        let nibFile13: UINib = UINib(nibName: "VideoTharteenCollectionViewCell", bundle: nil)
        thrteenCollectionView.register(nibFile13, forCellWithReuseIdentifier: "Ccell13")
        thrteenCollectionView.delegate = self
        thrteenCollectionView.dataSource = self
        
        let nibFile14: UINib = UINib(nibName: "VideoForteenCollectionViewCell", bundle: nil)
        forteenCollectionView.register(nibFile14, forCellWithReuseIdentifier: "Ccell14")
        forteenCollectionView.delegate = self
        forteenCollectionView.dataSource = self
        
        let nibFile15: UINib = UINib(nibName: "VideoFifteenCollectionViewCell", bundle: nil)
        fifteenCollectionView.register(nibFile15, forCellWithReuseIdentifier: "Ccell15")
        fifteenCollectionView.delegate = self
        fifteenCollectionView.dataSource = self
        
        let nibFile16: UINib = UINib(nibName: "VideoSixteenCollectionViewCell", bundle: nil)
        sixteenCollectionView.register(nibFile16, forCellWithReuseIdentifier: "Ccell16")
        sixteenCollectionView.delegate = self
        sixteenCollectionView.dataSource = self
    }
    
    // MARK: - All Buttons Navigation
    @IBAction func navigationButtonTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "NotificationsViewController") as! NotificationsViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "NotificationsViewController") as! NotificationsViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func notificationButtonTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "NotificationsViewController") as! NotificationsViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func foreMoreButtonclicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "ContinueWatchingViewController") as! ContinueWatchingViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func movieNotBeMisedButtonTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "MoviewNotMisdViewController") as! MoviewNotMisdViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func webShowButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "WebShowViewController") as! WebShowViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func RomanitcShowButttonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "RomanitcShowViewController") as! RomanitcShowViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func top10ThisWeekbutton(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "Top10ThisWeekViewController") as! Top10ThisWeekViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func newInVDesiButtonclicked(_ sender: UIButton) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "NewINVDesiViewController") as! NewINVDesiViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func trendingOnMXButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "TrendingOnMXViewController") as! TrendingOnMXViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func hiddenGenmsInHindiButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "HiddenGemsInHindiViewController") as! HiddenGemsInHindiViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func kCrazehitsButtobClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "KCkrezeViewController") as! KCkrezeViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func fantasyShowbuttonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "FantasyShowInVDesiViewController") as! FantasyShowInVDesiViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func everGrrnButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "EvergreenInMXViewController") as! EvergreenInMXViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func mxTopPickedButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "MXTopPicsViewController") as! MXTopPicsViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func topShowOnMXbuttonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "TopShowOnMXViewController") as! TopShowOnMXViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
}

// MARK: - Method :  CollectionViewDelegate , Datasource
extension VideoViewController: UICollectionViewDelegate ,UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.FirstCollectionView{
            return arrName1.count
        } else if collectionView == self.secondVideoCollectionView{
            return arrImage2.count
        } else if collectionView == self.thirdVideoCollectionView{
            return arrimage3.count
        } else if collectionView == self.fourCollectionView{
            return arrImage4.count
        } else if collectionView == self.fiveCollectionView{
            return arrImage5.count
        } else if collectionView == self.sixCollectionView{
            return arrImage6.count
        } else if collectionView == self.savenCollectionView{
            return arrImage7.count
        } else if collectionView == self.eightCollectionView{
            return arrImage8.count
        } else if collectionView == self.nineCollectonView{
            return arrImage9.count
        } else if collectionView == self.tenCollectionView{
            return arrImage10.count
        } else if collectionView == self.elevanCollectionView{
            return arrImage11.count
        } else if collectionView == self.twelwCollectionView{
            return arrImage12.count
        } else if collectionView == self.thrteenCollectionView{
            return arrImage13.count
        } else if collectionView == self.forteenCollectionView{
            return arrImage14.count
        } else if collectionView == self.fifteenCollectionView{
            return arrImage15.count
        } else {
            return arrImage16.count
        }
    }
    
    // MARK: - Collectionview cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.FirstCollectionView{
            let cell: VideoOneCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell1", for: indexPath) as! VideoOneCollectionViewCell
            let collectionRow = arrName1[indexPath.row]
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.nameLabel1.text = arrName1[indexPath.row]
            return cell
        }else if collectionView == self.secondVideoCollectionView{
            let cell: VideoTwoCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell2", for: indexPath) as! VideoTwoCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.TwoImageView.image = UIImage(named: arrImage2[indexPath.row])
            return cell
        }else if collectionView == self.thirdVideoCollectionView{
            let cell: VideoThreeCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell3", for: indexPath) as! VideoThreeCollectionViewCell
            let myview = arrName3[indexPath.row]
            
            cell.nameLabel.text = arrName3[indexPath.row]
            cell.theeImage.image = UIImage(named: arrimage3[indexPath.row])
            return cell
        }
        if collectionView == self.fourCollectionView{
            let cell: VideoFourCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell4", for: indexPath) as! VideoFourCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.foreImageView.image = UIImage(named: arrImage4[indexPath.row])
            return cell
        }else if collectionView == self.fiveCollectionView{
            let cell: VideoFiveCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell5", for: indexPath) as! VideoFiveCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.fiveImageView.image = UIImage(named: arrImage5[indexPath.row])
            return cell
        }else if collectionView == self.sixCollectionView{
            let cell: VideoSixCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell6", for: indexPath) as! VideoSixCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.sixImageView.image = UIImage(named: arrImage6[indexPath.row])
            return cell
        }else if collectionView == self.savenCollectionView{
            let cell: VideoSavenCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell7", for: indexPath) as! VideoSavenCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.savenImageView.image = UIImage(named: arrImage7[indexPath.row])
            return cell
        }else if collectionView == self.eightCollectionView{
            let cell: VideoEightCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell8", for: indexPath) as! VideoEightCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.eightImageView.image = UIImage(named: arrImage8[indexPath.row])
            return cell
        }else if collectionView == self.nineCollectonView{
            let cell: VideoNineCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell9", for: indexPath) as! VideoNineCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.nineImageView.image = UIImage(named: arrImage9[indexPath.row])
            return cell
        } else if collectionView == self.tenCollectionView{
            let cell: VideoTenCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell10", for: indexPath) as! VideoTenCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.tenImageView.image = UIImage(named: arrImage10[indexPath.row])
            return cell
        } else if collectionView == self.elevanCollectionView{
            let cell: VideoElevenCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell11", for: indexPath) as! VideoElevenCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.elevenImageView.image = UIImage(named: arrImage11[indexPath.row])
            return cell
        } else if collectionView == self.twelwCollectionView{
            let cell: VideoTwelveCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell12", for: indexPath) as! VideoTwelveCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.twelveImageView.image = UIImage(named: arrImage12[indexPath.row])
            return cell
        } else if collectionView == self.thrteenCollectionView{
            let cell: VideoTharteenCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell13", for: indexPath) as! VideoTharteenCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.tharteenImageView.image = UIImage(named: arrImage13[indexPath.row])
            return cell
        } else if collectionView == self.forteenCollectionView{
            let cell: VideoForteenCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell14", for: indexPath) as! VideoForteenCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.foreteenImageView.image = UIImage(named: arrImage14[indexPath.row])
            return cell
        } else if collectionView == self.fifteenCollectionView{
            let cell: VideoFifteenCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell15", for: indexPath) as! VideoFifteenCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.fifteenImageView.image = UIImage(named: arrImage15[indexPath.row])
            return cell
        } else {
            let cell: VideoSixteenCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Ccell16", for: indexPath) as! VideoSixteenCollectionViewCell
            cell.layer.cornerRadius = 15
            cell.layer.borderWidth = 0.5
            cell.layer.masksToBounds = true
            cell.sixteenImageView.image = UIImage(named: arrImage16[indexPath.row])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //        if collectionView ==  self.FirstCollectionView{
        //            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //            let navigation = storyboard.instantiateViewController(withIdentifier: "VideoViewController") as! VideoViewController
        //            self.navigationController?.pushViewController(navigation, animated: true)
        //        } else {
        //            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //            let navigation = storyboard.instantiateViewController(withIdentifier: "NotificationsViewController") as! NotificationsViewController
        //            self.navigationController?.pushViewController(navigation, animated: true)
        //        }
        
        
        if FirstCollectionView.tag == 0{
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let navigation = storyboard.instantiateViewController(withIdentifier: "ContinueWatchingViewController") as! ContinueWatchingViewController
            self.navigationController?.pushViewController(navigation, animated: true)
        }else if FirstCollectionView.tag == 1{
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let navigation = storyboard.instantiateViewController(withIdentifier: "NotificationsViewController") as! NotificationsViewController
            self.navigationController?.pushViewController(navigation, animated: true)
        }else if FirstCollectionView.tag == 2{
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let navigation = storyboard.instantiateViewController(withIdentifier: "VideoViewController") as! VideoViewController
            self.navigationController?.pushViewController(navigation, animated: true)
        }else if FirstCollectionView.tag == 3{
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let navigation = storyboard.instantiateViewController(withIdentifier: "MoviewNotMisdViewController") as! MoviewNotMisdViewController
            self.navigationController?.pushViewController(navigation, animated: true)
        }
    }
}

// MARK: - Method: CollectionViewDelegateFlowLayout
extension VideoViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.FirstCollectionView{
            return CGSize(width: 120, height: 40)
        }else if collectionView == self.secondVideoCollectionView{
            return CGSize(width: 300, height: 140)
        }else if collectionView == self.thirdVideoCollectionView{
            return CGSize(width: 300, height: 100)
        }else if collectionView == self.forteenCollectionView{
            return CGSize(width: 140, height: 140)
        }else if collectionView == self.fiveCollectionView{
            return CGSize(width: 140, height: 140)
        }else if collectionView == self.sixCollectionView{
            return CGSize(width: 140, height: 140)
        }else if collectionView == self.savenCollectionView{
            return CGSize(width: 140, height: 140)
        }else if collectionView == self.eightCollectionView{
            return CGSize(width: 140, height: 140)
        }else if collectionView == self.nineCollectonView{
            return CGSize(width: 140, height: 140)
        }else if collectionView == self.tenCollectionView{
            return CGSize(width: 140, height: 140)
        }else if collectionView == self.elevanCollectionView{
            return CGSize(width: 140, height: 140)
        }else if collectionView == self.twelwCollectionView{
            return CGSize(width: 140, height: 140)
        }else if collectionView == self.thrteenCollectionView{
            return CGSize(width: 140, height: 140)
        }else if collectionView == self.forteenCollectionView{
            return CGSize(width: 140, height: 140)
        }else if collectionView == self.fifteenCollectionView{
            return CGSize(width: 140, height: 140)
        }else{
            return CGSize(width: 140, height: 140)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == self.FirstCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.secondVideoCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.thirdVideoCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.forteenCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.fiveCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.sixCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.savenCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.eightCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.nineCollectonView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.tenCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.elevanCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.twelwCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.thrteenCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.forteenCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else if collectionView == self.fifteenCollectionView{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }else{
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }
    }
}
