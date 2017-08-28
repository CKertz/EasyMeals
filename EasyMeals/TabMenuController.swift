//
//  TabMenuController.swift
//  EasyMeals
//
//  Created by Cooper on 8/8/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit

class TabMenuController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        let rootListController = ListController(collectionViewLayout: layout)
        let listNavigationController = UINavigationController(rootViewController: rootListController)
        listNavigationController.tabBarItem.title = "Lists"
        listNavigationController.tabBarItem.image = UIImage(named: "list")
        
        let rootSettingsController = SettingsController()
        let settingsNavigationController = UINavigationController(rootViewController: rootSettingsController)
        settingsNavigationController.tabBarItem.title = "Settings"
        settingsNavigationController.tabBarItem.image = UIImage(named: "gear" )
        
        viewControllers = [listNavigationController,settingsNavigationController]
    }
}
