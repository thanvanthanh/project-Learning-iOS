//
//  CreateViewController.swift
//  DieuHuongManHinh
//
//  Created by Thân Văn Thanh on 4/2/21.
//

import UIKit

class CreateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Creat Vc"
        
        let rightButton = UIBarButtonItem(image: UIImage(systemName: "gobackward"), style: .done, target: self, action: #selector(goBackMain))
        
        let addButton = UIBarButtonItem(title: "abc", style: .done, target: self, action: #selector(goBackMain))
        
        //navigationItem.rightBarButtonItem = rightButton
        navigationItem.rightBarButtonItems = [rightButton, addButton]

    }
    @objc func goBackMain() {
        
        // về màn trước đó
        navigationController?.popViewController(animated: true)
    }


    
}
