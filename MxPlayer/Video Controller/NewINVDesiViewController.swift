//
//  NewINVDesiViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class NewINVDesiViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var newInVDesiTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrNewINVDesiImage: [String] = ["c41","c42","c43","c44","c45","c46","c28","c31","c18","c23"]
    var arrmovieName: [String] = ["KARWAAN" , "KHOOBSURAT" , "HASEEN DILRUBA" , "LOVE PER SQUARE FOOT" , "TADAP" , "SHE" , "DILVALE DULHANIA LE JAYENGE" , "A SCANDALL" , "THE ZOYA FACTOR" , "AE DIL HAI MUSHKIL"]
    var arrsubTital: [String] = ["3 August 2018" , "19 September 2014" , "2 July 2021" , "20 April 2018" , "3 December 2021" , "20 March 2020" , "20 October 1995" , "24 June 2016" , "20 September 2019" , "28 October 2016"]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nibRegister()
    }
    
    // MARK: - TableView Nibfile
    private func nibRegister(){
        let nibFile: UINib = UINib(nibName: "NewINVDesiTableViewCell", bundle: nil)
        newInVDesiTableView.register(nibFile, forCellReuseIdentifier: "Tcell6")
        newInVDesiTableView.separatorStyle = .none
        newInVDesiTableView.delegate = self
        newInVDesiTableView.dataSource = self
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension NewINVDesiViewController: UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNewINVDesiImage.count
        return arrmovieName.count
        return arrsubTital.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: NewINVDesiTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Tcell6", for: indexPath) as! NewINVDesiTableViewCell
        cell.nameNewInVDesiLabel.text = arrmovieName[indexPath.row]
        cell.subTitleNewInVDesiLabel.text = arrsubTital[indexPath.row]
        cell.imageNewInVDesi.layer.borderWidth = 1
        cell.layer.borderWidth = 0.5
        cell.imageNewInVDesi.layer.cornerRadius = 10
        cell.imageNewInVDesi.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.imageNewInVDesi.image = UIImage(named: arrNewINVDesiImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
