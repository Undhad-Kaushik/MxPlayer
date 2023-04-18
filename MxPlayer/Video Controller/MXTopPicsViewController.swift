//
//  MXTopPicsViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class MXTopPicsViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var mxTopicsTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrMXTopicsImage: [String] = ["c77","c78","c79","c80","c81","c82","c83","c84","c85","c86"]
    var arrmovieName: [String] = ["A Suitable Boy" , "JERSEY" , "THE ZOYA FACTOR" , "THAR" , "WINE COUNTRY" , "HEROPANTI" , "Billy" , "GEHRAIYAAN" , "GOOD BYE" , "QARIB QARIB SINGLLE"]
    var arrsubTital: [String] = ["26 July 2020" , "22 April 2022" , "20 September 2019" , "June 2023" , "8 May 2019" , "23 May 2014" , "19 May 2000" , "11 February 2022" , "7 October 2022" , "10 November 2017"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "MXTopPicsTableViewCell", bundle: nil)
        mxTopicsTableView.register(nibFile, forCellReuseIdentifier: "Tcell12")
        mxTopicsTableView.separatorStyle = .none
        mxTopicsTableView.delegate = self
        mxTopicsTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension MXTopPicsViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMXTopicsImage.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MXTopPicsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell12", for: indexPath) as! MXTopPicsTableViewCell
        cell.nameMXTopPicsLabel.text = arrmovieName[indexPath.row]
        cell.subTitleMXTopPicsLAbel.text = arrsubTital[indexPath.row]
        cell.imageMXTopPics.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.imageMXTopPics.layer.cornerRadius = 10
        cell.imageMXTopPics.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.imageMXTopPics.image = UIImage(named: arrMXTopicsImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
