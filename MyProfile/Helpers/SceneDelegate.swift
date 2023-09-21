//
//  SceneDelegate.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/19.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
//        let mainViewController = ProfileViewController()
//
//        window.rootViewController = mainViewController
//        self.window = window
//        window.makeKeyAndVisible()
        
        // 뷰 컨트롤러 생성
        let homeVC = HomeViewController()
        let shortsVC = ShortsViewController()
        let profileVC = ProfileViewController()
        
        // 각 tab bar의 viewcontroller 설정
        let homeTitle = "Home"
        let homeIcon = UIImage.init(systemName: "house")
        homeVC.tabBarItem = UITabBarItem(title: homeTitle, image: homeIcon, tag: 0)
        let shortsTitle = "Shorts"
        let shortsIcon = UIImage.init(systemName: "video")
        shortsVC.tabBarItem = UITabBarItem(title: shortsTitle, image: shortsIcon, tag: 1)
        let profileTitle = "Profile"
        let profileIcon = UIImage.init(systemName: "person")
        profileVC.tabBarItem = UITabBarItem(title: profileTitle, image: profileIcon, tag: 2)

//        // 위에 타이틀 text를 항상 크게 보이게 설정
//        homeVC.navigationItem.largeTitleDisplayMode = .always
//        shortsVC.navigationItem.largeTitleDisplayMode = .always
//        profileVC.navigationItem.largeTitleDisplayMode = .always
        
        // 탭 바 컨트롤러 생성
        let tabBarController = TabBarViewController()
        tabBarController.viewControllers = [homeVC, shortsVC, profileVC]
        
        tabBarController.selectedIndex = 2 // 시작 페이지 설정
        
        tabBarController.tabBar.tintColor = .mainColor1
        
//        // navigationController의 root view 설정
//        let navigationHome = UINavigationController(rootViewController: homeVC)
//        let navigationShorts = UINavigationController(rootViewController: shortsVC)
//        let navigationProfile = UINavigationController(rootViewController: profileVC)
//
//        navigationHome.navigationBar.prefersLargeTitles = true
//        navigationShorts.navigationBar.prefersLargeTitles = true
//        navigationProfile.navigationBar.prefersLargeTitles = true
//
//        setViewControllers([navigationHome, navigationShorts, navigationProfile], animated: false)
        
        window.rootViewController = tabBarController
        
        // 윈도우를 표시
        self.window = window
        window.makeKeyAndVisible()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        
        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
    
    
}

