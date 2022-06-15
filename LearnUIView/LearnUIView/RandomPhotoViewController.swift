//
//  RandomPhotoViewController.swift
//  LearnUIView
//
//  Created by Thanh on 3/16/21.
//

import UIKit

class RandomPhotoViewController: UIViewController {

    @IBOutlet weak var randomImageView: UIImageView!
    
    @IBOutlet weak var randomButton: UIButton!
    
    
    var listImage = ["anh1" , "anh2" , "anh3" , "anh4" , "anh5"]
    
    var oldImageName : String = "anh1"
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        randomButton.backgroundColor = UIColor.systemPink
        randomButton.setTitle("Random", for: .normal) // dat ten button
        randomButton.layer.borderWidth = 2 // cỡ viền
        randomButton.layer.borderColor = UIColor.black.cgColor
    
        //hien thi hinh anh ban dau
        randomImageView.image = UIImage(named: "anh1")
        
    }
    
    @IBAction func tap(_ sender: Any) {
        var randomName: String? = ""
        repeat {
            randomName = listImage.randomElement()

        } while randomName == oldImageName
        randomImageView.image = UIImage(named: randomName ?? "anh1")
        
        oldImageName = randomName ?? "anh1"
        
        
    
    }
    
}
// cho 1 UI view màu nền mặc định là Black > tap vào uiview >> thay đổi màu , màu thay đổi sẽ random từ một mảng màu >>> tạo mảng màu có kiểu [UIColor]
//vd: let class : [UIColor] = [UIColor.red , UIColor.blue,...] tối thiểu 10 màu
