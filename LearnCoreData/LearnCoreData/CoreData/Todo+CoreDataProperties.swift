//
//  Todo+CoreDataProperties.swift
//  LearnCoreData
//
//  Created by Thân Văn Thanh on 4/27/21.
//
//

import Foundation
import CoreData


extension Todo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Todo> {
        return NSFetchRequest<Todo>(entityName: "Todo")
    }

    @NSManaged public var id: String?
    @NSManaged public var title: String?
    @NSManaged public var content: String?
    @NSManaged public var isComplete: Bool
    @NSManaged public var time: Date?

}

extension Todo : Identifiable {
    //thêm mới 1 todo vào Container
    static func addNewTodo(title: String? , content : String? , isComplete : Bool , time : Date?) -> Todo? {
        let todo = NSEntityDescription.insertNewObject(forEntityName: "Todo", into: AppDelegate.managerObjectContext!) as! Todo
        todo.id = UUID().uuidString
        todo.title = title
        todo.content = content
        todo.isComplete = isComplete
        todo.time = time
        
        // tiến hành lưu todo
        do {
            try AppDelegate.managerObjectContext?.save()
            print("thêm mới dữ liệu thành công")
        }catch{
            let nsError = error as NSError
            print("không thể thêm mới todo \(nsError)")
            
            return nil
        }
        
        return todo
    }
    static func getAllTodos() -> [Todo] {
        var results = [Todo]()
        let data = AppDelegate.managerObjectContext
        
        do{
            results = try data!.fetch(Todo.fetchRequest()) as [Todo]
        } catch {
        let nsError = error
            print("không thể lấy danh sách, \(nsError)")
            return results
        }
        return results
    }
    
    static func deleteTodoByID(id: String){
            let moc = AppDelegate.managerObjectContext
            let todos = Todo.getAllTodos()
            for item in todos{
                if item.id == id {
                    moc?.delete(item)
                }
            }
            do {
                try AppDelegate.managerObjectContext?.save()
                
            } catch {
                let nsError = error as NSError
                print("Không thể xoá vì \(nsError)")
                return
            }
            print("Xoá todo thành công")
        }
}
