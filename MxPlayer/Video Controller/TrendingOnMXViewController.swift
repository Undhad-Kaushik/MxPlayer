//
//  TrendingOnMXViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class TrendingOnMXViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var trendinOnMXTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrtrendINMXImage: [String] = ["c47","c48","c49","c50","c51","c52","c22","c78","c86","c90"]
    var arrmovieName: [String] = ["DOUBLE XL" ,"Dil Bechara" , "fittor" , "flames : Padhai or Pyar ", "ONE NIGHT STAND" , "B.A.PASS" , "DWARKA" , "JERSEY" , "QARIB QARIB SINGLLE" , "GHOST"]
    var arrsubTital: [String] = ["4 November 2022" , "24 July 2020" , "12 February 2016" , "5 January 2018" , "6 May 2016" , "12 March 2013" , "3 March 2017" , "22 April 2022" , "10 November 2017" , "5 October 2022"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "TrendingOnMXTableViewCell", bundle: nil)
        trendinOnMXTableView.register(nibFile, forCellReuseIdentifier: "Tcell7")
        trendinOnMXTableView.separatorStyle = .none
        trendinOnMXTableView.delegate = self
        trendinOnMXTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension TrendingOnMXViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrtrendINMXImage.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TrendingOnMXTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell7", for: indexPath) as! TrendingOnMXTableViewCell
        cell.nameTrendingMXLabel.text = arrmovieName[indexPath.row]
        cell.subTitleTrendingMXLabel.text = arrsubTital[indexPath.row]
        cell.imageTrendingMX.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.imageTrendingMX.layer.cornerRadius = 10
        cell.imageTrendingMX.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.imageTrendingMX.image = UIImage(named: arrtrendINMXImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
