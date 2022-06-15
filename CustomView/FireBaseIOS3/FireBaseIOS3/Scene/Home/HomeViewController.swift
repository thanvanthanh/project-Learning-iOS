//
//  HomeViewController.swift
//  FireBaseIOS3
//
//  Created by Thân Văn Thanh on 5/12/21.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onLogout(_ sender: Any) {
        FireBaseAuthManager.shared.logout { (status) in
            if status{
                print("đăng xuất thành công")
                self.navigationController?.popToRootViewController(animated: true)
               
            }else{
                print("đăng xuất không thành công")
            }
        }
        
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
