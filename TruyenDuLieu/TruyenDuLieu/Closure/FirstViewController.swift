//
//  FirstViewController.swift
//  TruyenDuLieu
//
//  Created by Thân Văn Thanh on 4/6/21.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    @IBAction func gotoSecond(_ sender: Any) {
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .fullScreen
        
        
        //B3 : hứng closure
        secondVC.closure = {(data1, data2) in
            self.nameLabel.text = data1
            self.phoneLabel.text = data2
            
        }
        
        secondVC.personData = { data in
            print(data.id , data.name , data.address, data.phone , data.age)
        }
        present(secondVC, animated: true, completion: nil)
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
