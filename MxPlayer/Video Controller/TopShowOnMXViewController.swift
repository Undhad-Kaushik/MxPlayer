//
//  TopShowOnMXViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class TopShowOnMXViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var topShowMXTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrTopShowMXImage: [String] = ["c20","c18","c22","c33","c44","c55","c66","c77","c88","c49"]
    var arrmovieName: [String] = ["DEAR ZINDAGI" , "THE ZOYA FACTORE" , "DWARAKA" , "HATE STORY 3" , "Love Per Square foot" , "HARDANG" , "RADHE SHYAM" , "A Sutable Boy" , "OPERATION ROMIO" , "fitoor"]
    var arrsubTital: [String] = ["25 November 2016" , "20 September 2019" , "3 March 2017" , "4 December 2015" , "20 April 2018" , "8 April 2022" , "11 March 2022" , "26 July 2020" , "22 April 2022" , "12 February 2016"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "TopShowOnMXTableViewCell", bundle: nil)
        topShowMXTableView.register(nibFile, forCellReuseIdentifier: "Tcell13")
        topShowMXTableView.separatorStyle = .none
        topShowMXTableView.delegate = self
        topShowMXTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension TopShowOnMXViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTopShowMXImage.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TopShowOnMXTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell13", for: indexPath) as! TopShowOnMXTableViewCell
        cell.nameTopshowMXLAbel.text = arrmovieName[indexPath.row]
        cell.subTitleLAbel.text = arrsubTital[indexPath.row]
        cell.imageTopshowMX.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.imageTopshowMX.layer.cornerRadius = 10
        cell.imageTopshowMX.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.imageTopshowMX.image = UIImage(named: arrTopShowMXImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
