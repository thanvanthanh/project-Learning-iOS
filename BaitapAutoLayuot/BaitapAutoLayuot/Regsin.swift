//
//  Regsin.swift
//  BaitapAutoLayuot
//
//  Created by Thanh on 3/22/21.
//

import UIKit

class Regsin: UIViewController {

    @IBOutlet weak var Text1: UITextField!
    @IBOutlet weak var Text2: UITextField!
    @IBOutlet weak var Text3: UITextField!
    @IBOutlet weak var Text4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Text1.layer.borderWidth = 3
        Text1.layer.borderColor = UIColor(red: 0.76, green: 0.88, blue: 0.77, alpha: 1.00).cgColor
        
        Text2.layer.borderWidth = 3
        Text2.layer.borderColor = UIColor(red: 0.76, green: 0.88, blue: 0.77, alpha: 1.00).cgColor
        
        Text3.layer.borderWidth = 3
        Text3.layer.borderColor = UIColor(red: 0.76, green: 0.88, blue: 0.77, alpha: 1.00).cgColor
        
        Text4.layer.borderWidth = 3
        Text4.layer.borderColor = UIColor(red: 0.76, green: 0.88, blue: 0.77, alpha: 1.00).cgColor
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
