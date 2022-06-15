//
//  MainViewController.swift
//  LearnScrollViewAndTableView
//
//  Created by Thân Văn Thanh on 4/9/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var name: [String] = ["A" , "B" , "C" , "D" , "E"]
    override func viewDidLoad() {
        super.viewDidLoad()
        

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.tableFooterView = UIView()
        
        // đăng ký cell
        
        
        //MARK: - Đăng ký với cell có file giao diện
        tableView.register(UINib(nibName: "ZaloTableViewCell", bundle: nil), forCellReuseIdentifier: "ZaloTableViewCell")
        
        
        // MARK: - đăng ký với cell ko có file giao diện
        tableView.register(ContactTableViewCell.self, forCellReuseIdentifier: "ContactTableViewCell")
        
    }
    

    
}
extension MainViewController: UITableViewDelegate , UITableViewDataSource {
    //hàm trả về số dòng trong 1 section. key :numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    //trả về nội dung của 1 hàng (cell) key :cellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //khởi tạo tableviewCell
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
//        cell.textLabel?.text = "\(name[indexPath.row])"
//        cell.detailTextLabel?.text = "Đây là phần tử thứ \(indexPath.row)"
//        return cell
        
//        let zalocell = tableView.dequeueReusableCell(withIdentifier: "ZaloTableViewCell", for: indexPath) as! ZaloTableViewCell
//        zalocell.nameLabel.text = "\(name[indexPath.row])"
//        zalocell.mesageLabel.text = "Đây là phần tử thứ \(indexPath.row)"
//        return zalocell
        
        let contactCell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as! ContactTableViewCell
       
        return contactCell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
