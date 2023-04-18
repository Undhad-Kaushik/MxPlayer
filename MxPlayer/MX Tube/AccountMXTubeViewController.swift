//
//  AccountMXTubeViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 22/03/23.
//

import UIKit
import Alamofire

class AccountMXTubeViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var TableViewMXAccount: UITableView!
    
    // MARK: - Variables & Array
    var arrData: MainData!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - All function call
        apiCall()
    }
    
    // MARK: - API
    private func apiCall(){
        AF.request("https://api.dexscreener.com/latest/dex/search?q=WBNB%20USDC",method: .get).responseData{ [self] response in
            debugPrint(response)
            if response.response?.statusCode == 200{
                guard let apiData = response.data else { return }
                do{
                    let result = try JSONDecoder().decode(MainData.self, from: apiData)
                    arrData = result
                    TableViewMXAccount.reloadData()
                }catch{
                    print(error.localizedDescription)
                }
            }else{
                print("Wrong")
            }
        }
    }
}

// MARK: - Method: Tableview Delegate & Datasource
extension AccountMXTubeViewController: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData?.pairs.count ?? 0
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MXTubeAccountTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ApiCell", for: indexPath) as! MXTubeAccountTableViewCell
        cell.nameLabelOne.text = "\(arrData.pairs[indexPath.row].fdv)"
        cell.nameLabelTwo.text = "\(arrData.pairs[indexPath.row].dexID)"
        cell.nameLabelThree.text = "\(arrData.pairs[indexPath.row].fdv)"
        cell.nameLabelFour.text = "\(arrData.pairs[indexPath.row].priceChange)"
        cell.nameLabelFive.text = "\(arrData.pairs[indexPath.row].volume)"
        cell.layer.borderWidth = 1
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}

// MARK: - Model
struct MainData: Decodable {
    let schemaVersion: String
    let pairs: [Pair]
}

struct Pair: Decodable {
    let dexID: String
    let url: String
    let pairAddress: String
    let labels: [String]?
    let baseToken: EToken
    let quoteToken: EToken
    let priceNative: String
    let priceUsd: String
    let txns: Txns
    let volume: PriceChange
    let priceChange: PriceChange
    let liquidity: Liquidity
    let fdv: Double
    let pairCreatedAt: Int?
    
    enum CodingKeys: String, CodingKey {
        case dexID = "dexId"
        case url, pairAddress, labels, baseToken, quoteToken, priceNative, priceUsd, txns, volume, priceChange, liquidity, fdv, pairCreatedAt
    }
}

struct EToken: Decodable {
    let address: String
}

struct Liquidity: Decodable {
    let usd: Double
    let base: Double
    let quote: Double
}

struct PriceChange: Decodable {
    let h24: Double
    let h6: Double
    let h1: Double
    let m5: Double
}
struct Txns: Decodable {
    let h1: H1
    let h24: H1
    let h6: H1
    let m5: H1
}
struct H1: Decodable {
    let buys: Int
    let sells: Int
}
