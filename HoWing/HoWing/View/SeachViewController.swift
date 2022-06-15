//
//  SeachViewController.swift
//  HoWing
//
//  Created by Ishipo on 28/04/2021.
//

import UIKit

class SeachViewController: UIViewController {

    var dataS = [mainData]()
    var seachdata = [mainData]()
    
    let topView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        return view
    }()
    
    
    let recommendLbl : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Recommended"
        lbl.font = UIFont(name: "Chalkboard SE Bold", size: 23)
        lbl.textColor = .black
        
        return lbl
        
    }()
    
    let Button1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Avocado", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.07, green: 0.52, blue: 0.46, alpha: 1.00)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.layer.cornerRadius = 13
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    let Button2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Broccoli", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.07, green: 0.52, blue: 0.46, alpha: 1.00)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.layer.cornerRadius = 13
        button.titleLabel?.textAlignment = .center

        return button
    }()
    let Button3: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Lemon", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.07, green: 0.52, blue: 0.46, alpha: 1.00)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.layer.cornerRadius = 13
        button.titleLabel?.textAlignment = .center

        return button
    }()
    let Button4: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+ More", for: .normal)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.titleLabel?.textAlignment = .center

        return button
    }()
    
    let botView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        
        return view
    }()
    
    let seachTableView: UITableView = {
        let tblView = UITableView()
        tblView.translatesAutoresizingMaskIntoConstraints = false
        tblView.showsVerticalScrollIndicator = false
        tblView.register(SeachTableViewCell.self, forCellReuseIdentifier: "SeachTableViewCell")
        tblView.backgroundColor = .white
        tblView.tableFooterView = UIView()
        
        
        return tblView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.93, green: 0.95, blue: 0.93, alpha: 1.00)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        let photo = UIBarButtonItem(image: UIImage(systemName: "camera"), style: .done, target: self, action: #selector(selectedCamera))
        photo.tintColor = .black
        
        let seachbar = UISearchBar()
        seachbar.sizeToFit()
        seachbar.showsCancelButton = true
        
        navigationItem.titleView = seachbar
        seachbar.delegate = self

        seachbar.placeholder = "Search for Recipes"
        
        navigationItem.rightBarButtonItem = photo

        dataS = updatedata()
        seachdata = dataS

        seachTableView.delegate = self
        seachTableView.dataSource = self
        
        setupLayout()
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return UIStatusBarStyle.darkContent
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
       
        seachTableView.reloadData()
        
    }
    
    func setupLayout(){
        view.addSubview(botView)
        view.addSubview(topView)
        topView.addSubview(recommendLbl)
        topView.addSubview(Button1)
        topView.addSubview(Button2)
        topView.addSubview(Button3)
        topView.addSubview(Button4)
        botView.addSubview(seachTableView)
        
        
        
        
        topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/6).isActive = true
        
        recommendLbl.topAnchor.constraint(equalTo: topView.topAnchor, constant: 5).isActive = true
        recommendLbl.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20).isActive = true
        
        Button1.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20).isActive = true
        Button1.topAnchor.constraint(equalTo: recommendLbl.bottomAnchor, constant: 10).isActive = true
        Button1.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        Button2.leadingAnchor.constraint(equalTo: Button1.trailingAnchor, constant: 20).isActive = true
        Button2.topAnchor.constraint(equalTo: recommendLbl.bottomAnchor, constant: 10).isActive = true
        Button2.widthAnchor.constraint(equalToConstant: 90).isActive = true


        Button3.topAnchor.constraint(equalTo: recommendLbl.bottomAnchor, constant: 10).isActive = true
        Button3.leadingAnchor.constraint(equalTo: Button2.trailingAnchor, constant: 20).isActive = true
        Button3.widthAnchor.constraint(equalToConstant: 70).isActive = true

        
        Button4.topAnchor.constraint(equalTo: Button1.bottomAnchor, constant: 10).isActive = true
        Button4.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20).isActive = true



        
        
        botView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        botView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        botView.topAnchor.constraint(equalTo: topView.topAnchor, constant: 140).isActive = true
        botView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
        seachTableView.widthAnchor.constraint(equalTo: botView.widthAnchor, multiplier: 1).isActive = true
        seachTableView.heightAnchor.constraint(equalTo: botView.heightAnchor, multiplier: 1).isActive = true
    }

    @objc func selectedCamera(){

        let alert = UIAlertController(title: "Report App", message: "Select To ", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Exit", style: .cancel, handler: nil)
        let camera = UIAlertAction(title: "Camera", style: .default, handler: nil )
        
        let libray = UIAlertAction(title: "Library", style: .default, handler: nil)
        
        
        alert.addAction(camera)
        alert.addAction(libray)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }

   
}


    

extension SeachViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return seachdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SeachTableViewCell", for: indexPath) as! SeachTableViewCell
//        cell.imageV.image = UIImage(named: seachdata[indexPath.row].image)
//        cell.sourceNameLable.text = seachdata[indexPath.row].source
//        cell.titleLable.text = seachdata[indexPath.row].title
//        
        cell.data = seachdata[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let inforVC = InfoViewController()
        inforVC.dataF = seachdata[indexPath.row]
        
        inforVC.modalPresentationStyle = .fullScreen
        present(inforVC, animated: true, completion: nil)

    }
   
    
    
}

extension SeachViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        seachdata = dataS.filter({ mainData -> Bool in
            guard let text = searchBar.text else { return false}
            
            return mainData.title.contains(text)
            
        })
        seachTableView.reloadData()
    }
    
   
    
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
        searchBar.endEditing(true)
    }
}

    
