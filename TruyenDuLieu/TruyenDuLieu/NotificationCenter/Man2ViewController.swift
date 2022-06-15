//
//  Man2ViewController.swift
//  TruyenDuLieu
//
//  Created by Thân Văn Thanh on 4/6/21.
//

import UIKit

class Man2ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //đăng ký nhận thông báo
        NotificationCenter.default.addObserver(self, selector: #selector(notification(_:)), name: Notification.Name.init("Person"), object: nil)

    }
    
    @objc func notification(_ data : Notification){
        guard let newData = data.object as? (String, String) else {
            return
        }
        print("màn 2 nhận data: \(newData.0) - \(newData.1)")
        nameLabel.text = newData.0
        phoneLabel.text = newData.1
    }
    
    
    
    @IBAction func gotoMan3(_ sender: Any) {
        let man3VC = Man3ViewController()
        man3VC.modalPresentationStyle = .fullScreen

        present(man3VC, animated: true, completion: nil)
        man3VC.modalPresentationStyle = .fullScreen
    }
    
    @IBAction func backtoMan1(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
