//
//  WebShowViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class WebShowViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var webShowTabelView: UITableView!
    
    // MARK: - Variables & Array
    var arrWebShow: [String] = ["c23","c24","c25","c26","c27","c28","c71","c83","c43","c11"]
    var arrmovieName: [String] = ["ae dil hai mushil" , "BARFI!" , "KHOOBSURAT" , "BOLLYWOOD" , "The Guardian" , "Dilwale Dulhania Le Jayenge" , "ZERO" , "Billu" , "HASEEN DILRUBA" , "BAAZIGAR"]
    
    var arrsubTital: [String] = ["28 October 2016" , "14 September 2012" , "19 September 2014" , "No data found"  , "29 September 2006" , "20 October 1995" , "21 December 2018" , "13 February 2009" , "2 July 2021" , "12 November 1993"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "WebShowTableViewCell", bundle: nil)
        webShowTabelView.register(nibFile, forCellReuseIdentifier: "Tcell3")
        webShowTabelView.separatorStyle = .none
        webShowTabelView.delegate = self
        webShowTabelView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension WebShowViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrWebShow.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: WebShowTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell3", for: indexPath) as! WebShowTableViewCell
        cell.nameWebShowLabel.text = arrmovieName[indexPath.row]
        cell.subtitleWebShowLabel.text = arrsubTital[indexPath.row]
        cell.imageWebShow.image = UIImage(named: arrWebShow[indexPath.row])
        cell.imageWebShow.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.imageWebShow.layer.cornerRadius = 10
        cell.imageWebShow.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
