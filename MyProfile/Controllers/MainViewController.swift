//
//  MainViewController.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/21.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainView = MainView()
        // uipage button addTarget 설정
        mainView.uiPageButton.addTarget(self, action: #selector(tapUIPageButton), for: .touchUpInside)
        // uipage button addTarget 설정
        mainView.coreDataPageButton.addTarget(self, action: #selector(tapCoreDataPageButton), for: .touchUpInside)
        
        view.backgroundColor = .white
        
        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    // MARK: - Helpers
    @objc func tapUIPageButton() {
        setTabBarView()
    }
    
    @objc func tapCoreDataPageButton() {
        let userInfoViewController = UserInfoViewController()
        
        // 새로운 뷰 컨트롤러를 모달로 표시
        userInfoViewController.modalPresentationStyle = .fullScreen
        userInfoViewController.modalTransitionStyle = .crossDissolve
        present(userInfoViewController, animated: true)
    }
    
    func setTabBarView() {
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
        
        // 탭 바 컨트롤러 생성
        let tabBarController = TabBarViewController()
        tabBarController.viewControllers = [homeVC, shortsVC, profileVC]
        tabBarController.selectedIndex = 2 // 시작 페이지 설정
        tabBarController.tabBar.tintColor = .mainColor1
        
        // 새로운 뷰 컨트롤러를 모달로 표시
        tabBarController.modalPresentationStyle = .fullScreen
        tabBarController.modalTransitionStyle = .crossDissolve
        present(tabBarController, animated: true)
    }
}
