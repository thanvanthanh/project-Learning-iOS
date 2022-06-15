//
//  ZaloViewController.swift
//  ZaloApp
//
//  Created by Taof on 4/13/21.
//

import UIKit

class ZaloViewController: UIViewController {

    var datas = [Zalo]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datas = createDatas()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.register(UINib(nibName: "ZaloTableViewCell", bundle: nil), forCellReuseIdentifier: "ZaloTableViewCell")
    }
}

extension ZaloViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ZaloTableViewCell", for: indexPath) as! ZaloTableViewCell
        cell.zalo = datas[indexPath.row]
        cell.nameLabel.text = ""
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
