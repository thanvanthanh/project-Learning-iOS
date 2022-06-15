//
//  ViewController.swift
//  LearnCoreData
//
//  Created by Thân Văn Thanh on 4/27/21.
//

import UIKit


class ViewController: UIViewController {
    
    var data = [Todo]()
    
    
    @IBOutlet weak var dataTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightButton = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .done, target: self, action: #selector(creatData))
        
        navigationItem.rightBarButtonItem = rightButton
        
        dataTableView.delegate = self
        dataTableView.dataSource = self
        
        data = Todo.getAllTodos()
        
        
//        let todo = Todo.addNewTodo(title: "bai1", content: "khong co noi dung", isComplete: false, time: Date())
//        print((todo?.id)! , todo?.title ?? "", todo?.content ?? "", todo?.isComplete ?? "" , (todo?.time)!)
        
        let datas = Todo.getAllTodos()
        print(datas.count)
        for item in datas {
        
            print(item.id ?? "" , item.time)
            
        }
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        data = Todo.getAllTodos()
        dataTableView.reloadData()
        
    }
    @objc func creatData (){
        let creatVC = CreatViewController()
        
        navigationController?.pushViewController(creatVC, animated: true)
    
    }
  
    
    
    func convertDatetoString(_ date: Date) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            dateFormatter.timeStyle = .short
            let dateString = dateFormatter.string(from: date)
            return dateString
        }
}
extension ViewController : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Todo")
        
        cell.textLabel?.text = data[indexPath.row].title
//        cell.detailTextLabel?.text = data[indexPath.row].content ?? ""
        
        cell.detailTextLabel?.text = convertDatetoString((data[indexPath.row].time)!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .normal, title: "Xoá") { (context, self, nil) in
//            Todo.deleteTodoByID(id: self.data[indexPath.row].id)
//            self.data
            tableView.deleteRows(at: [indexPath], with: .fade)
            print("delete")
            
        }
        deleteAction.backgroundColor = .red
        
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        return  configuration
    }

}
