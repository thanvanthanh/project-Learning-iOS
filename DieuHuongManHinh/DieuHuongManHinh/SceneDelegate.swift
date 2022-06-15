//
//  SceneDelegate.swift
//  DieuHuongManHinh
//
//  Created by Thân Văn Thanh on 4/2/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window?.windowScene = windowScene
        
        let mainVC = ChatViewController()
//        let mainVC = setupTabarController()

        
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
        
    }
    
    func setupTabarController () -> UITabBarController{
    let tabBC = UITabBarController()
        
        let chatVC = ChatViewController()
        chatVC.tabBarItem = UITabBarItem(title: "Chat", image: UIImage(systemName: "message"), selectedImage: UIImage(systemName: "message.fill"))
        chatVC.tabBarItem.badgeValue = "1000" // thông báo
        
        
        let contacVC = ContacViewController()
        contacVC.tabBarItem = UITabBarItem(title: "Contac", image: UIImage(systemName: "person.crop.circle"), tag: 1)
        contacVC.tabBarItem.badgeValue = "20" // thông báo
        
        let groupVC = GroupViewController()
        
        groupVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        
        tabBC.setViewControllers([chatVC , contacVC , groupVC], animated: true)
        
        return tabBC
    }


}

