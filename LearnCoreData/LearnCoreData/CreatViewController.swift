//
//  CreatViewController.swift
//  LearnCoreData
//
//  Created by Thân Văn Thanh on 4/27/21.
//

import UIKit

class CreatViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let saveButton = UIBarButtonItem(title: "Lưu", style: .done, target: self, action: #selector(saveData))
        
        navigationItem.rightBarButtonItem = saveButton
    
}
    @objc func saveData(){
        Todo.addNewTodo(title: myTextField.text, content: myTextView.text, isComplete: false, time: Date(timeIntervalSinceNow: 25600))
        navigationController?.popToRootViewController(animated: true)
    }
}
