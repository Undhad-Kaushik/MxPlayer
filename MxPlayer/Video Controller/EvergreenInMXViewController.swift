//
//  EvergreenInMXViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class EvergreenInMXViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var evergreenMXTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrEvergreenMXImage: [String] = ["c71","c72","c73","c74","c75","c76","c55","c45","c35","c25"]
    var arrmovieName: [String] = ["ZERO" , "HOLIDATE" , "HARDANG"  , "83" , "WEDDING SEASON" , "Love Today" , "herding" , "TADAP" , "Love Story" , "KHOOBSURAT"]
    var arrsubTital: [String] = ["21 December 2018" , "28 October 2020" , "8 April 2022" , "24 December 2021" , "4 August 2022" , "4 November 2022" , "17 April 2015" ," 3 December 2021" , "24 September 2021" , "19 September 2014"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "EvergreenInMXTableViewCell", bundle: nil)
        evergreenMXTableView.register(nibFile, forCellReuseIdentifier: "Tcell11")
        evergreenMXTableView.separatorStyle = .none
        evergreenMXTableView.delegate = self
        evergreenMXTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension EvergreenInMXViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrEvergreenMXImage.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: EvergreenInMXTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell11", for: indexPath) as! EvergreenInMXTableViewCell
        cell.nameEvergreenMXLabel.text = arrmovieName[indexPath.row]
        cell.subTitleEvergreenMXLabel.text = arrsubTital[indexPath.row]
        cell.imageEvergreenMX.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.imageEvergreenMX.layer.cornerRadius = 10
        cell.imageEvergreenMX.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.imageEvergreenMX.image = UIImage(named: arrEvergreenMXImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
