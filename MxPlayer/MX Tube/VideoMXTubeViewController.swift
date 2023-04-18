//
//  VideoMXTubeViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 23/03/23.
//

import UIKit
import Alamofire

class VideoMXTubeViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var VideoMXtubeTableView: UITableView!
    
    // MARK: - Variables & Array
    var arrData: ApiMainData!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - All function call
        apiCall()
    }
    
    // MARK: - TableView Nibfile
    private func nibDelegateDataSource(){
        VideoMXtubeTableView.delegate = self
        VideoMXtubeTableView.dataSource = self
    }
    
    // MARK: - API
    private func apiCall(){
        AF.request("https://dummyjson.com/posts",method: .get).responseData{  response in
            debugPrint(response)
            if response.response?.statusCode == 200 {
                guard let apiData = response.data else { return }
                do{
                    self.arrData = try JSONDecoder().decode(ApiMainData.self, from: apiData)
                    print(self.arrData)
                    self.VideoMXtubeTableView.reloadData()
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
extension VideoMXTubeViewController: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData?.posts.count ?? 0
    }
    
    // MARK: - TabelView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: VideoMXTubeTableTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MXTubeVideoCell", for: indexPath) as! VideoMXTubeTableTableViewCell
        cell.nameLabelOne.text = "\(arrData.posts[indexPath.row].id)"
        cell.nameLabelTwo.text = "\(arrData.posts[indexPath.row].title)"
        cell.nameLabelThree.text = "\(arrData.posts[indexPath.row].body)"
        cell.nameLabelFour.text = "\(arrData.posts[indexPath.row].userId)"
        cell.nameLabelFive.text = "\(arrData.posts[indexPath.row].tags)"
        cell.layer.borderWidth = 1
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        VideoMXtubeTableView.reloadData()
    }
}

// MARK: - Model
struct ApiMainData: Decodable {
    let posts: [Pairs]
    let total: Int
    let skip: Int
    let limit: Int
}

struct Pairs: Decodable {
    let id: Int
    let title: String
    let body: String
    let userId: Int
    let tags: [String]
    let reactions: Int
}
