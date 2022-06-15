//
//  ViewController.swift
//  StackOverflow
//
//  Created by Thân Văn Thanh on 4/20/21.
//

import UIKit
import Alamofire
import SwiftyJSON
class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var datas = [Item]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        getAPI("https://api.stackexchange.com/2.2/questions?order=desc&sort=votes&site=stackoverflow")
    }
    func getAPI(_ url : String){
        let urlRequest = URL(string: url)!
        
        AF.request(urlRequest,method: .get , encoding: URLEncoding.default).responseJSON { (response) in
            print(response.request)
            switch (response.result){
            case .success(let value):
                print (value)
                let json = JSON(value)
                print(json)
                let stack = StackOverflow(json)
                print(stack?.hasMore, stack?.quotaMax, stack?.quotaRemaining)
                if let item = stack?.items{
                    print(item.count)
                    self.datas = item
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print(error)
            }
            
        }
    }

}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "TableViewCell")
        cell.textLabel?.text = datas[indexPath.row].title
        cell.detailTextLabel?.text = "\(datas[indexPath.row].score ?? 0)" 
        return cell
    }
    
}
