//
//  MoviewNotMisdViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class MoviewNotMisdViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var MoviewNotMisdTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrContinueWatching: [String] = ["c17","c18","c19","c20","c21","c22","c33","c76","c87","c28"]
    var arrmovieName: [String] = ["ADIPURUSH" , "THE ZOYA FACTOR" , "COCKTAIL" , "DEAR ZINDAGI" , "Angrezi main kehte hain" , "DWARAKA" , "HATE STORY 3" , "Love Today" , "Hey SINAMIKA" , "Dilvale Dulhaniya Le Jayenge"]
    
    var arrsubTital: [String] = ["16 June 2023" , "20 September 2019" , "13 July 2012" , "25 November 2016" , "18 May 2018" , "3 March 2017" , "4 December 2015" , "4 November 2022" , "3 March 2022" , "20 October 1995"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "MoviewNotMisdTableViewCell", bundle: nil)
        MoviewNotMisdTableView.register(nibFile, forCellReuseIdentifier: "Tcell2")
        MoviewNotMisdTableView.separatorStyle = .none
        MoviewNotMisdTableView.delegate = self
        MoviewNotMisdTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension MoviewNotMisdViewController: UITableViewDelegate , UITableViewDataSource{
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
        let cell: MoviewNotMisdTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell2", for: indexPath) as! MoviewNotMisdTableViewCell
        cell.nameMoviewNotMisdLabel.text = arrmovieName[indexPath.row]
        cell.subTitleMoviewNotMisdLabel.text = arrsubTital[indexPath.row]
        cell.ImageMoviewNotMisd.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.ImageMoviewNotMisd.layer.cornerRadius = 10
        cell.ImageMoviewNotMisd.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.ImageMoviewNotMisd.image = UIImage(named: arrContinueWatching[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
