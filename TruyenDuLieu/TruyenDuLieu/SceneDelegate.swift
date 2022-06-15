//
//  SceneDelegate.swift
//  TruyenDuLieu
//
//  Created by Thân Văn Thanh on 4/6/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        //khoi tao cua so window
        window = UIWindow(frame: UIScreen.main.bounds)
      //  khởi tao scene
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window?.windowScene = windowScene
        let mainVC = Screen1ViewController()
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
        
    }

   


}

