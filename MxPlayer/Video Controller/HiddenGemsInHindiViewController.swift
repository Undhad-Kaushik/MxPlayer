//
//  HiddenGemsInHindiViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class HiddenGemsInHindiViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var hiddenGemsTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrHiddenGamesImage: [String] = ["c53","c54","c55","c56","c57","c58","c44","c22","c33","c46"]
    var arrmovieName: [String] = ["BEiiMAAN LOVE" , "PAD MAN" , "HURDANG" , "Mili" , "INDOO KI JAWANI" , "MONIKA O MY DARLING" , "Love Per Square foot" , "DWARAKA" , "HATE STORY 3" , "SHE" ]
    var arrsubTital: [String] = ["14 October 2016" , "9 February 2018 ", "8 April 2022" ,"4 November 2022" , "11 December 2020" , "11 November 2022" , "20 April 2018" , "3 March 2017" , "4 December 2015" , "20 March 2020"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "HiddenGemsInHindiTableViewCell", bundle: nil)
        hiddenGemsTableView.register(nibFile, forCellReuseIdentifier: "Tcell8")
        hiddenGemsTableView.separatorStyle = .none
        hiddenGemsTableView.delegate = self
        hiddenGemsTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension HiddenGemsInHindiViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrHiddenGamesImage.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HiddenGemsInHindiTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell8", for: indexPath) as! HiddenGemsInHindiTableViewCell
        cell.nameHiddenGemsLabel.text = arrmovieName[indexPath.row]
        cell.subTitleHiddenGemsLabel.text = arrsubTital[indexPath.row]
        cell.imageHiddenGems.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.imageHiddenGems.layer.cornerRadius = 10
        cell.imageHiddenGems.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.imageHiddenGems.image = UIImage(named: arrHiddenGamesImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
