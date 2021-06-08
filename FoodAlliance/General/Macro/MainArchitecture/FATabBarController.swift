//
//  FATabBarController.swift
//  FoodAlliance
//
//  Created by WX on 2021/6/8.
//

import UIKit

class FATabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupChildViewController()
    }
    func setupChildViewController() {
        let homeVC = HomeViewController.init()
        let homeNav = FANavigationController.init(rootViewController: homeVC)
        
        let categoryVC = CategoryViewController.init()
        let categoryNav = FANavigationController.init(rootViewController: categoryVC)
        
        let highlightVC = HighlightViewController.init()
        let hightlightNav = FANavigationController.init(rootViewController: highlightVC)
        
        let messageVC = MessageViewController.init()
        let messageNav = FANavigationController.init(rootViewController: messageVC)
        
        let myVC = MyViewController.init()
        let myNav = FANavigationController.init(rootViewController: myVC)
        
        self.viewControllers = [ homeNav, categoryNav, hightlightNav, messageNav, myNav ]
        let titles = [ "首页", "分类", "看点", "消息", "我的" ]
        let icons = [ "", "", "", "", "" ]
        let select_icon = [ "", "", "", "", "" ]
    
        for (idx, item) in titles.enumerated() {
            self.tabBar.items![idx].title = item
            self.tabBar.items![idx].image = UIImage.init(named: icons[idx])
            self.tabBar.items![idx].selectedImage = UIImage.init(named: select_icon[idx])
        }
    }

}
