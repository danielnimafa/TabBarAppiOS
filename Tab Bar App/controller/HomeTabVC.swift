//
//  HomeTabBarVC.swift
//  Tab Bar App
//
//  Created by Daniel Nimafa on 19/01/19.
//  Copyright © 2019 Kipacraft. All rights reserved.
//

import UIKit

class HomeTabVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstVCLabel = String(describing: TabOneVC.self)
        let secondVCLabel = String(describing: TabTwoVC.self)
        let thirdVCLabel = String(describing: TabThreeVC.self)
        
        guard let firstVC: TabOneVC = storyboardInstanceWithID(firstVCLabel), let secondVC: TabTwoVC = storyboardInstanceWithID(secondVCLabel), let thirdVC: TabThreeVC = storyboardInstanceWithID(thirdVCLabel) else { return }
        
        firstVC.tabBarItem = UITabBarItem()
        secondVC.tabBarItem = UITabBarItem()
        thirdVC.tabBarItem = UITabBarItem()
        
        let tabItems = [firstVC, secondVC, thirdVC]
        viewControllers = tabItems.map { UINavigationController(rootViewController: $0) }
        guard let tabs = tabBar.items else { return }
        tabs[0].title = "Home"
        tabs[1].title = "Discover"
        tabs[2].title = "Settings"
        
        selectedIndex = 0
    }
}
