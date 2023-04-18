//
//  Top10ThisWeekViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class Top10ThisWeekViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var top10ThisweekTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrTop10ThisWeekImage: [String] = ["c35","c36","c37","c38","c38","c40","c88","c15","c24","c22"]
    var arrmovieName: [String] = ["LOVE STORY" , "SAANSEIN" , "SANAM RE" , "SONU KE TITU KI SWEETY" , "SONU KE TITU KI SWEETY" , "RAANJHANAA" , "OPERATION ROMIO" , "TAMASHA" , "BARFI!" , "DWARAKA"]
    var arrsubTital: [String] = ["24 September 2021" , "25 November 2016" , "12 February 2016" , "23 February 2018" , "23 February 2018" , "21 June 2013" , "22 April 2022" , "27 November 2015" , "14 September 2012" , "3 March 2017"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "Top10ThisWeekTableViewCell", bundle: nil)
        top10ThisweekTableView.register(nibFile, forCellReuseIdentifier: "Tcell5")
        top10ThisweekTableView.separatorStyle = .none
        top10ThisweekTableView.delegate = self
        top10ThisweekTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension Top10ThisWeekViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTop10ThisWeekImage.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: Top10ThisWeekTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell5", for: indexPath) as! Top10ThisWeekTableViewCell
        cell.nametop10ThisWeekLabel.text = arrmovieName[indexPath.row]
        cell.subTitleTop10thisWeekLabel.text = arrsubTital[indexPath.row]
        cell.imageTop10ThisWeek.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.imageTop10ThisWeek.layer.cornerRadius = 10
        cell.imageTop10ThisWeek.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.imageTop10ThisWeek.image = UIImage(named: arrTop10ThisWeekImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
