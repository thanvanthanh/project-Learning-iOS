//
//  ViewController.swift
//  DieuHuongManHinh
//
//  Created by Thân Văn Thanh on 4/2/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Main VC"
        
        //left button
        let trashButton = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(remove))
        navigationItem.leftBarButtonItem = trashButton
        //right
        let creatButton = UIBarButtonItem(title: "Add", style: .done, target: self, action: #selector(goToCreateVC))
        navigationItem.rightBarButtonItem = creatButton
        
    }
    @objc func goToCreateVC(){
        
        let createVC = CreateViewController()
        navigationController?.pushViewController(createVC, animated: true)
    }
    
    @objc func remove(){
        print("remove")
    }


}

