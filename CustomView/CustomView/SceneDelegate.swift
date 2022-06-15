//
//  SceneDelegate.swift
//  CustomView
//
//  Created by Taof on 3/26/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window?.windowScene = windowScene
        let main = FirstViewController()
        window?.rootViewController = main
        window?.makeKeyAndVisible()
        
    }
    
}

