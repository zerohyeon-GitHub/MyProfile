//
//  TabBarViewController.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/21.
//

import Foundation
import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        // 탭바 높이를 설정하는 방법.. 아직 미구현
//        let desiredTabBarHeight: CGFloat = 200
//
//        print("viewDidLayoutSubviews called")
//            print("Current tabBar frame: \(self.tabBar.frame)")
//
//        // 현재 탭바 높이와 새로운 높이가 다를 때에만 변경
//        if self.tabBar.frame.height != desiredTabBarHeight {
//            var tabFrame = self.tabBar.frame
//            tabFrame.size.height = desiredTabBarHeight
//            tabFrame.origin.y = self.view.frame.size.height - desiredTabBarHeight
//            self.tabBar.frame = tabFrame
//        }
//
//        print("Updated tabBar frame: \(self.tabBar.frame)")
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
        if let scrollView = findScrollView(in: viewController.view) {
            let top = CGPoint(x: 0, y: -scrollView.contentInset.top)
            scrollView.setContentOffset(top, animated: true)
        }
    }
    
    func findScrollView(in view: UIView) -> UIScrollView? {
        for subview in view.subviews {
            if let scrollView = subview as? UIScrollView {
                return scrollView
            }
            if let found = findScrollView(in: subview) {
                return found
            }
        }
        return nil
    }
}
