//
//  ContinueWatchingViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 09/03/23.
//

import UIKit

class ContinueWatchingViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var continueWatchingTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrContinueWatching: [String] = ["c11","c12","c13","c14","c15","c16","c55","c76","c49","c40"]
    var arrmovieName: [String] = ["BAAZIGAR","RAVI TEJA: MOST POPULAR","PATHAAN","JAGGA JASOOS","TAMASHA","SALAAR","HURDANG", "love today" , "fitoor" , "raanjhanaa"]
    var arrsubTital: [String] = ["12 November 1993","2018","25 January 2023","14 July 2017","27 November 2015","28 September 2023","8 April 2022" , "4 November 2022" , "12 February 2016" , "21 June 2013" ]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "ContinueWatchingTableViewCell", bundle: nil)
        continueWatchingTableView.register(nibFile, forCellReuseIdentifier: "Tcell1")
        continueWatchingTableView.separatorStyle = .none
        continueWatchingTableView.delegate = self
        continueWatchingTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension ContinueWatchingViewController: UITableViewDelegate ,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrContinueWatching.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ContinueWatchingTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell1", for: indexPath) as! ContinueWatchingTableViewCell
        cell.MovieNameLabel.text = arrmovieName[indexPath.row]
        cell.subTitelLabel.text = arrsubTital[indexPath.row]
        cell.ContinueimageView.layer.borderWidth = 1
        cell.ContinueimageView.layer.cornerRadius = 10
        cell.ContinueimageView.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.ContinueimageView.image = UIImage(named: arrContinueWatching[indexPath.row])
        return cell
    }
}
