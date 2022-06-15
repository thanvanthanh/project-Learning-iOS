//
//  ChatViewController.swift
//  ThanhZalo
//
//  Created by Thân Văn Thanh on 4/10/21.
//

import UIKit

class ChatViewController: UIViewController {
    
    @IBOutlet weak var tabView: UITableView!
    var name : [String] = ["Thân Văn Thanh" , "Tào Quỳnh" , "Doãn Hoài Linh" , "Quan Vân Trường" , "Triệu Tử Long" , "ZaloPay" , "VinShop" , "Budweiser" , "Bộ Y Tế"]
    
    var mess : [String] = ["Em chào anh!" , "Hello bạn trẻ" , "Em là nữ sn 99" , "Chán chưa =)) " , "Mặt hàng này còn không ?" , "Bạn có 2 voucher hết hạn ngày 10/4" , "[Miền Bắc] NHẬP HÀNG GÌ TUẦN NÀY..." , "THÊM THỜI GIAN , SĂN VÔ VÀN GIẢI..." , "11 nhóm đối tượng được tiêm vắc..."]
    
    
    var avatar = ["1" , "2" , "3" , "4" , "5" ,"zalopay" , "vin" , "bud" , "boyte" ]
    
    let findView : UIView = {
        let  v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = true
        v.backgroundColor = . white
        return v
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.10, green: 0.10, blue: 0.10, alpha: 1.00)
        
        tabView.delegate = self
        tabView.dataSource = self
        tabView.showsVerticalScrollIndicator = false
        tabView.backgroundColor = UIColor(red: 0.10, green: 0.10, blue: 0.10, alpha: 1.00)
        tabView.tableFooterView = UIView()
        
        setupLayout()
        
        //dang ky cell
        tabView.register(UINib(nibName: "ZaloTableViewCell", bundle: nil), forCellReuseIdentifier: "ZaloTableViewCell")
    }
    
    func setupLayout() {
        tabView.addSubview(findView)
        
        findView.bottomAnchor.constraint(equalTo: tabView.bottomAnchor, constant: 0).isActive = true
        findView.centerXAnchor.constraint(equalTo: tabView.centerXAnchor, constant: 0).isActive = true
        findView.widthAnchor.constraint(equalTo: tabView.widthAnchor, multiplier: 1).isActive = true
        findView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
}
extension ChatViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabView.dequeueReusableCell(withIdentifier: "ZaloTableViewCell", for: indexPath) as! ZaloTableViewCell
        cell.avtImage.image = UIImage(named: avatar[indexPath.row])
        cell.avtImage.layer.cornerRadius = 30
        cell.nameLabel.text = "\(name[indexPath.row])"
        cell.messLabel.text = "\(mess[indexPath.row])"
        let ramdomNum: UInt32 = arc4random_uniform(59)
        let random = Int(ramdomNum)
        cell.timeLabel.text = "\(random) phút"
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    //MARK: - thêm thao tác vuốt từ bên phải
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //thêm
        let option = UIContextualAction(style: .normal, title: "Thêm") { (action, sourceView, completionHandler) in
            let add = UIAlertController(title: "", message: "Tuỳ chọn", preferredStyle: .actionSheet)
            
            add.addAction(UIAlertAction(title: "Ẩn trò chuyện", style: .default, handler: { (action : UIAlertAction) in
                self.name.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }))
            
            add.addAction(UIAlertAction(title: "Tắt thông báo", style: .default, handler: { (action: UIAlertAction) in
                
                let offNotifications = UIAlertController(title: "", message: "Không thông báo tin nhắn tới của cuộc hội thoại này", preferredStyle: .actionSheet)
                offNotifications.addAction(UIAlertAction(title: "Trong 1 giờ", style: .default, handler: { (act) in
                    // code
                }))
                offNotifications.addAction(UIAlertAction(title: "Trong 4 giờ", style: .default, handler: { (act) in
                // code
                }))
                offNotifications.addAction(UIAlertAction(title: "Đến 8 giờ sáng", style: .default, handler: { (act) in
                    //code
                }))
                offNotifications.addAction(UIAlertAction(title: "Cho đến khi được mở lại", style: .default, handler: { (act) in
                    //code
                }))
                offNotifications.addAction(UIAlertAction(title: "Huỷ", style: .cancel, handler: { (act) in
                    //code
                }))
                self.present(offNotifications, animated: true, completion: nil)
            }))
            
            add.addAction(UIAlertAction(title: "Huỷ", style: .cancel, handler: { (act) in
                add.dismiss(animated: true, completion: nil)
            }))
            self.present(add, animated: true, completion: nil)

            print("Thêm: \(indexPath)")
            completionHandler(true)
        }
        //ghim
        let pin = UIContextualAction(style: UIContextualAction.Style.normal, title: "Ghim") { (action, sourceView, completionHandler) in
            let onPin = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Nhận Thưởng Ngay", style: .cancel, handler: nil)
            onPin.addAction(okAction)
            let customTitle = NSMutableAttributedString(string: "Vietlott thông báo", attributes: [
                NSAttributedString.Key.font: UIFont(name: "Times New Roman", size: 24.0)!,
                NSAttributedString.Key.foregroundColor: UIColor.red
                    ])
                    onPin.setValue(customTitle, forKey: "attributedTitle")
                    
                    let customMessage = NSMutableAttributedString(string: "\nChúc mừng bạn đã trúng giải Jackpot với giá trị giải thưởng.\n\n", attributes: [
                        NSAttributedString.Key.font: UIFont(name: "Times New Roman", size: 18.0)!,
                        NSAttributedString.Key.foregroundColor: UIColor.blue
                    ])
                    customMessage.append(NSMutableAttributedString(string: "112.000.000.000 VNĐ", attributes: [
                        NSAttributedString.Key.font: UIFont(name: "Georgia", size: 14.0)!,
                        NSAttributedString.Key.foregroundColor: UIColor.black
                    ]))
                    onPin.setValue(customMessage, forKey: "attributedMessage")
                    
                    okAction.setValue(UIColor.orange, forKey: "titleTextColor")
                    self.present(onPin, animated: true, completion: nil)
            
            print("Ghim: \(indexPath)")
            completionHandler(true)
        }
        
        //xoá cell
        let delete = UIContextualAction(style: .destructive, title: "Xoá") { (action, sourceView, completionHandler) in
            let delete = UIAlertController(title: "Xoá trò chuyện đã chọn ?", message: "Bạn sẽ không thể xem lại nội dung của trò chuyện này", preferredStyle: .alert)
            
            delete.addAction(UIAlertAction(title: "Không xoá", style: .default, handler: { (action: UIAlertAction!) in
                delete.dismiss(animated: true, completion: nil)
                
            }))
            
            delete.addAction(UIAlertAction(title: "Xoá", style: .destructive, handler: { (action: UIAlertAction!) in
                self.name.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }))
            
            self.present(delete, animated: true, completion: nil)

        }
        delete.backgroundColor = .red
        pin.backgroundColor = .blue
        option.backgroundColor = .gray
        let swipeActionConfig = UISwipeActionsConfiguration(actions: [delete, pin,option])
        swipeActionConfig.performsFirstActionWithFullSwipe = false
        return swipeActionConfig
    }
    //    private func updatef
    
}





