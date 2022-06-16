//
//  ProfileViewController.swift
//  HoWing
//
//  Created by Ishipo on 28/04/2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var viewmenu = UIView()
    var menu = ["My Account", "Upgrade to Pro","Dietary Perences","About Howing", "Feedback and Support"]
    
    var tableViewMN = UITableView()
    var versionLbl = UILabel ()
    var isEnableViewMenu = false
    var swipeToRight = UISwipeGestureRecognizer()
    var swipetoLeft = UISwipeGestureRecognizer()
    var tempview = UIView()
    var tapGesture = UITapGestureRecognizer()
    var topHeight_navigationBar_statusBar:CGFloat = 0.0

    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.93, green: 0.95, blue: 0.93, alpha: 1.00)
        
        
        return view
    }()
    let userImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "user")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 40
        return image
        
    }()
    let namelbl : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Than Van Thanh"
        lbl.textColor = .black
        lbl.textAlignment = .center
        lbl.font = UIFont(name: "Times New Roman", size: 25)

        
        return lbl
    }()
    let sologanLbl : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Give love in each dish"
        lbl.textAlignment = .center
        lbl.textColor = UIColor(displayP3Red: 0.138, green: 0.156, blue: 0.141, alpha: 1)
        lbl.font = UIFont(name: "Marker Felt Thin", size: 18)
        
        return lbl
    }()
    
    let bottableView : UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsVerticalScrollIndicator = false
        view.register(ProfileTableViewCell.self, forCellReuseIdentifier: "ProfileTableViewCell")
        view.backgroundColor = .clear
        view.tableFooterView = UIView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

//        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        navigationController?.navigationBar.shadowImage = UIImage()
        let logoutBt = UIBarButtonItem(title: "LogOut", style: .done, target: self, action: #selector(onLogout))
        
        
        let menu = UIBarButtonItem(image: UIImage(systemName: "list.dash"), style: .done, target: self, action: #selector(showmenu))
        navigationItem.leftBarButtonItem = menu
        navigationItem.rightBarButtonItem = logoutBt
       
        viewmenu = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width/1.5, height: self.view.bounds.height ))
        
        tableViewMN = UITableView(frame: CGRect(x: 0, y: 0, width: 0, height: self.view.bounds.height))
        tempview = UIView(frame: CGRect(x: self.view.bounds.width/1.5, y: 0, width: self.view.bounds.width - (self.view.bounds.width/1.5), height: self.view.bounds.height))
//        tempview.backgroundColor = .red
        tempview.isHidden = true
        versionLbl = UILabel(frame: CGRect(x: 15 , y: viewmenu.frame.height - 70, width: 150, height: 50))
        versionLbl.text = "Version 1.0"
        versionLbl.font = UIFont(name: "Chalkboard SE Bold", size: 20)
        versionLbl.textColor = .black
        self.view.addSubview(viewmenu)
        self.view.addSubview(tempview)
        self.viewmenu.addSubview(tableViewMN)

        tableViewMN.delegate = self
        tableViewMN.dataSource = self
        tableViewMN.register(tableviewCell.self, forCellReuseIdentifier: "cell")
        tableViewMN.separatorStyle = .none
        tableViewMN.backgroundColor = UIColor(red: 0.07, green: 0.52, blue: 0.46, alpha: 1.00)
        loadGesturefunctionality()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        setupLayout()
        
    }
   
    func setupLayout() {
        view.addSubview(namelbl)

        view.addSubview(userImage)
        view.addSubview(sologanLbl)
        view.addSubview(bottableView)

        NSLayoutConstraint.activate([
           
            userImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            userImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            userImage.heightAnchor.constraint(equalToConstant: 80),
            userImage.widthAnchor.constraint(equalToConstant: 80),

            namelbl.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 15),
            namelbl.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            sologanLbl.topAnchor.constraint(equalTo: namelbl.bottomAnchor, constant: 15),
            sologanLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            
            bottableView.topAnchor.constraint(equalTo: sologanLbl.bottomAnchor, constant: 15),
            bottableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bottableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            bottableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: (tabBarController?.tabBar.frame.height)!)
            
        
        ])
    }
    
    
    @objc func onLogout() {
//        FireBaseAuthManager.shared.logout { [weak self] (success) in
//            guard let strongSelf = self else {
//                return
//            }
//
//            if success {
//                UserDefaults.standard.removeObject(forKey: "login")
//                strongSelf.dismiss(animated: true, completion: nil)
//            }
//
//        }
        FireBaseAuthManager.shared.logout { (status) in
            if status {
                print("Đăng xuất thành công")
                self.dismiss(animated: true, completion: nil)
                
                
            } else {
                print("Đăng xuất không thành công")
            }
        }

        
    }

    @objc func showmenu() {
        
        if isEnableViewMenu {
            self.view.addGestureRecognizer(swipeToRight)
            self.view.removeGestureRecognizer(swipetoLeft)
            UIView.animate(withDuration: 0.5, animations: {
                self.viewmenu.frame = CGRect(x: 0, y: 0, width: 0, height: self.view.frame.height)
                self.tableViewMN.frame = CGRect(x: 0, y: 0, width: 0, height: self.view.frame.height)
            })
            
            self.tempview.isHidden = true
            userImage.isHidden = false
            namelbl.isHidden = false
            sologanLbl.isHidden = false
            bottableView.isHidden = false


        }else{
            self.view.addGestureRecognizer(swipetoLeft)
            self.view.removeGestureRecognizer(swipeToRight)
            UIView.animate(withDuration: 0.5) {
                self.viewmenu.frame = CGRect(x: 0, y: 0, width: self.view.frame.width/1.5, height: self.view.frame.height)
                self.tableViewMN.frame = CGRect(x: 0, y: 0, width: self.view.frame.width/1.5, height: self.view.frame.height)
            }
            self.tempview.isHidden = false
            userImage.isHidden = true
            namelbl.isHidden = true
            sologanLbl.isHidden = true
            bottableView.isHidden = true


        }
        isEnableViewMenu = !isEnableViewMenu
    }
    
    func loadGesturefunctionality(){
        swipeToRight = UISwipeGestureRecognizer(target: self, action: #selector(swipedToRight))
        swipeToRight.direction = .right
        self.view.addGestureRecognizer(swipeToRight)
        
        swipetoLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipedToLeft))
        swipetoLeft.direction = .left
        
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(closeSideBarView))
        tempview.addGestureRecognizer(tapGesture)
    }
    @objc func closeSideBarView(){
        print("tapGesture")
        self.view.addGestureRecognizer(swipeToRight)
        self.view.removeGestureRecognizer(swipetoLeft)
        UIView.animate(withDuration: 0.5, animations: {
            self.viewmenu.frame = CGRect(x: 0, y: 0, width: 0, height: self.view.frame.height)
            self.tableViewMN.frame = CGRect(x: 0, y: 0, width: 0, height: self.view.frame.height)
        })
        self.tempview.isHidden = true

        isEnableViewMenu = false
        
    }
    
    @objc func swipedToLeft(){
        self.view.addGestureRecognizer(swipeToRight)
        self.view.removeGestureRecognizer(swipetoLeft)
        UIView.animate(withDuration: 0.5, animations: {
            self.viewmenu.frame = CGRect(x: 0, y: 0, width: 0, height: self.view.frame.height)
            self.tableViewMN.frame = CGRect(x: 0, y: 0, width: 0, height: self.view.frame.height)
        })
        
        self.tempview.isHidden = true
        userImage.isHidden = false
        namelbl.isHidden = false
        sologanLbl.isHidden = false
        bottableView.isHidden = false
        
        isEnableViewMenu = false
    }
    
    
    @objc func swipedToRight(){
        
        self.view.addGestureRecognizer(swipetoLeft)
        self.view.removeGestureRecognizer(swipeToRight)
        UIView.animate(withDuration: 0.5) {
            self.viewmenu.frame = CGRect(x: 0, y: 0, width: self.view.frame.width/1.5, height: self.view.frame.height)
            self.tableViewMN.frame = CGRect(x: 0, y: 0, width: self.view.frame.width/1.5, height: self.view.frame.height)
        }
        self.tempview.isHidden = false
        userImage.isHidden = true
        namelbl.isHidden = true
        sologanLbl.isHidden = true
        bottableView.isHidden = true

        isEnableViewMenu = true
        
    }
    
    
    
    
    
}

class tableviewCell : UITableViewCell {
    
}
extension ProfileViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableViewMN{
            return menu.count

        }else{
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableViewMN {
        
        let cell = tableViewMN.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! tableviewCell
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor(red: 0.07, green: 0.52, blue: 0.46, alpha: 1.00)
        
        cell.textLabel?.text = menu[indexPath.row]
        return cell
            
        }else{
            let cell2 = bottableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
            
            
            return cell2
            
}
    
    
    
}
}

    
