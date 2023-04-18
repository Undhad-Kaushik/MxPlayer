//
//  FantasyShowInVDesiViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class FantasyShowInVDesiViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var fantasyShowVDesiTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrfantasyShowImage: [String] = ["c65","c66","c67","c68","c69","c70","c44","c33","c22","c11"]
    var arrmovieName: [String] = ["we are Family" , "Radhe Shyam" , "LOVE AAJ KAL" , "THE SKY IS PINK" , "THOUGHT MY WINDOW" , "No Strings Attached ", "Love Per Square foot" , "HATE STORY 3" , "DWARAKA" , "BAAZIGAR"]
    
    
    var arrsubTital: [String] = ["3 September 2010" , "11 March 2022" , "14 February 2020" , "11 October 2019" , "4 February 2022" , "11 February 2011" , "20 April 2018" , "4 December 2015" , "3 March 2017" , "12 November 1993"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "FantasyShowInVDesiTableViewCell", bundle: nil)
        fantasyShowVDesiTableView.register(nibFile, forCellReuseIdentifier: "Tcell10")
        fantasyShowVDesiTableView.separatorStyle = .none
        fantasyShowVDesiTableView.delegate = self
        fantasyShowVDesiTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension FantasyShowInVDesiViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrfantasyShowImage.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: FantasyShowInVDesiTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell10", for: indexPath) as! FantasyShowInVDesiTableViewCell
        cell.nameFantasyShowLabel.text = arrmovieName[indexPath.row]
        cell.subTitleFantasyShowLabel.text = arrsubTital[indexPath.row]
        cell.imageFantasyShow.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.imageFantasyShow.layer.cornerRadius = 10
        cell.imageFantasyShow.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.imageFantasyShow.image = UIImage(named: arrfantasyShowImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
