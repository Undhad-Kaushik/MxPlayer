//
//  HomeApiViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 27/03/23.
//

import UIKit
import Alamofire

class HomeApiViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var homeAPITabelView: UITableView!
    
    // MARK: - Variables & Array
    var arrdetails: [Elements] = []
    var arr: Elements!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nib()
        apiK()
    }
    
    // MARK: - TabelView Nibfile
    private func nib() {
        homeAPITabelView.delegate = self
        homeAPITabelView.dataSource = self
    }
    
    // MARK: - API
    private func apiK() {
        AF.request("https://api.spaceflightnewsapi.net/v3/articles",method: .get).responseData{ [self] response in
            debugPrint(response)
            if response.response?.statusCode == 200{
                guard let apiData = response.data else { return }
                do {
                    let result = try JSONDecoder().decode([Elements].self, from: apiData)
                    arrdetails = result
                    homeAPITabelView.reloadData()
                }catch{
                    print(error.localizedDescription)
                }
                
            } else {
                print("wrong")
            }
        }
    }
}

// MARK: - Method: TableViewDelegate & Datasource
extension HomeApiViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdetails.count
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HomeApiTableViewCell = tableView.dequeueReusableCell(withIdentifier: "apiKcell", for: indexPath) as! HomeApiTableViewCell
        
        cell.idLabel.text = "\(arrdetails[indexPath.row].id)"
        cell.titleLabel.text = "\(arrdetails[indexPath.row].title)"
        cell.launchesLabel.text = "\(arrdetails[indexPath.row].launches)"
        cell.featuredLabel.text = "\(arrdetails[indexPath.row].featured)"
        cell.myAPIImage.image = img(link: arrdetails[indexPath.row].imageUrl!)
        // cell.spaceWebViewApi.loadHTMLString(arrdetails[indexPath.row].url, baseURL:nil)
        cell.spaceWebViewApi.loadRequest(URLRequest(url: URL(string: arrdetails[indexPath.row].url!)!))
        cell.layer.borderWidth = 1
        return cell
    }
    
    func img(link:String)->UIImage?{
        let url1 = URL(string: link)
        let data = try? Data(contentsOf: url1! as URL)
        return UIImage(data: data!)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1000
    }
}

// MARK: - Model
struct Elements: Codable {
    let id: Int
    let title: String
    let url: String?
    let imageUrl: String?
    let newsSite: String
    let summary: String
    let publishedAt: String
    let updatedAt: String
    let featured: Bool
    let launches: [Launch]
    let events: [Event]
}

struct Launch: Codable {
    let id: String?
    let provider: String?
}

struct Event: Codable {
    let id: Int?
    let provider: String?
}
