//
//  RomanitcShowViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class RomanitcShowViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var RomanitcShowTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrRomanitcShowImage: [String] = ["c29","c30","c31","c32","c33","c34","c67","c63","c55","c77"]
    var arrmovieName: [String] = [ "LOVE STORY 2050" , "VICKY DONOR" , "A SCANDALL" , "mirzya" , "HATE STORY 3" , "PANGA" , "LOVE AAJ KAL" , "namaste wahala" , "HARDANG" , "A Suitable Boy"]
    var arrsubTital: [String] = ["4 July 2008" , "20 April 2012" , "24 June 2016" , "7 October 2016", "4 December 2015" , "24 January 2020" , "14 February 2020" , "1 December 2020" , "8 April 2022" , "26 July 2020"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "RomanitcShowTableViewCell", bundle: nil)
        RomanitcShowTableView.register(nibFile, forCellReuseIdentifier: "Tcell4")
        RomanitcShowTableView.separatorStyle = .none
        RomanitcShowTableView.delegate = self
        RomanitcShowTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension RomanitcShowViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRomanitcShowImage.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RomanitcShowTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell4", for: indexPath) as! RomanitcShowTableViewCell
        cell.nameRomanitcShowLabel.text = arrmovieName[indexPath.row]
        cell.subTitleRomanitcShowLabel.text = arrsubTital[indexPath.row]
        cell.ImageRomanitcShow.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.ImageRomanitcShow.layer.cornerRadius = 10
        cell.ImageRomanitcShow.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.ImageRomanitcShow.image = UIImage(named: arrRomanitcShowImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
