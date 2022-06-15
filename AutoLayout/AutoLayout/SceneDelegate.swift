//
//  SceneDelegate.swift
//  AutoLayout
//
//  Created by Thanh on 3/19/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // khoi tao bien window
        window = UIWindow(frame: UIScreen.main.bounds)
        // khoi tao windowScence
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        //gán windowScence vao window
        window?.windowScene = windowScene
        
        
        //khởi tạo màn muốn chạy đầu tiên
        let mainVC = Bai1ViewController()
        
        //gán mainVC cho root của window
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
        
    }

}

