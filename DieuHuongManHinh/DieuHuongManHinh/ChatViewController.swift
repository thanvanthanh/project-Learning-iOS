//
//  ChatViewController.swift
//  DieuHuongManHinh
//
//  Created by Thân Văn Thanh on 4/2/21.
//

import UIKit

class ChatViewController: UIViewController {
    
    let tabView : UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    var thanh : [String] = ["Thanh Dolce Gabana"]
    var cogiao : [String] = ["Tào Thúy Quỳnh"]
    var linh : [String] = ["Doãn Hoài Linh"]
    var obama : [String] = ["Barack Obama"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        setupLayout()

    }
    func setupLayout(){
        
        view.addSubview(tabView)
        
        
        tabView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 0).isActive = true
        tabView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        tabView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        tabView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
