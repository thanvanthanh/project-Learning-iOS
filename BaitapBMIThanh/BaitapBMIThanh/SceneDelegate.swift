//
//  SceneDelegate.swift
//  BaitapBMIThanh
//
//  Created by Thân Văn Thanh on 3/26/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window?.windowScene = windowScene
        
        let mainVC = Man1ViewController()
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
    }



}

