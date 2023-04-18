//
//  KCkrezeViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class KCkrezeViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var kcKrezeTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrkcKrezeImage: [String] = ["c59","c60","c61","c62","c63","c64","c22","c28","c13","c77"]
    var arrmovieName: [String] = ["JAADUGAR" , "LOOP LAPETA BEQARAAR" , "LUST Stories" , "MALAAL" , "namaste wahala" , "Kuch Kuch Hota Hai" ,"DWARAKA" , "Dilwale Dulhania Le Jayenge" , "PATHAAN" , "A Suitable Boy"]
    var arrsubTital: [String] = ["15 July 2022" , "4 February 2022" , "15 June 2018" , "5 July 2019 ", "1 December 2020" , "16 October 1998" , "3 March 2017" , "20 October 1995" ,"25 January 2023" ," 26 July 2020"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "KCkrezeTableViewCell", bundle: nil)
        kcKrezeTableView.register(nibFile, forCellReuseIdentifier: "Tcell9")
        kcKrezeTableView.separatorStyle = .none
        kcKrezeTableView.delegate = self
        kcKrezeTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension KCkrezeViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrkcKrezeImage.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: KCkrezeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell9", for: indexPath) as! KCkrezeTableViewCell
        cell.nameimageKCKrezeLabel.text = arrmovieName[indexPath.row]
        cell.subTitleimageKCKrezeLabel.text = arrsubTital[indexPath.row]
        cell.imageimageKCKreze.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.imageimageKCKreze.layer.cornerRadius = 10
        cell.imageimageKCKreze.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.imageimageKCKreze.image = UIImage(named: arrkcKrezeImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
