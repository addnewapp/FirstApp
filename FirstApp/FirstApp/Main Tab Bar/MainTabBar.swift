//
//  MainTabBar.swift
//  myfirstiosappz
//
//  Created by ZPG's Mac on 8/7/17.
//  Copyright © 2017 Code With ZPG. All rights reserved.
//

import UIKit
class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Auth.auth().currentUser == nil {
            //show if not logged in
            DispatchQueue.main.async {
                let signinVC = SignInVC()
                let navController = UINavigationController(rootViewController: signinVC)
                self.present(navController, animated: true, completion: nil)
            }
            
            return
        }
        
        setupViewControllers()
    }
    
    func setupViewControllers() {
        // corner vc
        let cornerController = CornerController()
        let cornerNavigationController = UINavigationController(rootViewController: cornerController)
        cornerNavigationController.title = "corner"
        cornerNavigationController.tabBarItem.image = UIImage(named: "education")

        let scheduleController = ScheduleController()
        let scheduleNavigationController = UINavigationController(rootViewController: scheduleController)
        scheduleNavigationController.title = "schedule"
        scheduleNavigationController.tabBarItem.image = UIImage(named: "calendar")
        

        let homeController = HomeController()
        let homeNavigationController = UINavigationController(rootViewController: homeController)
        homeNavigationController.title = "home"
        homeNavigationController.tabBarItem.image = UIImage(named: "home")
        
 
        let courseController = CourseController()
        let courseNavController = UINavigationController(rootViewController: courseController)
        courseNavController.title = "course"
        courseNavController.tabBarItem.image = UIImage(named: "book")
        
 
        let libraryController = LibraryController()
        let libraryNavController = UINavigationController(rootViewController: libraryController)
        libraryNavController.title = "library"
        libraryNavController.tabBarItem.image = UIImage(named: "more")
        
        viewControllers = [cornerNavigationController, scheduleNavigationController, homeNavigationController, courseNavController, libraryNavController]
        
        
        
        
        
        
//        tabBar.isTranslucent = true
        
        // remove or add the title texts of tab bar and centre the icon to tab bar
//        let tabBarItems = tabBar.items! as[UITabBarItem]
//        tabBarItems[0].title = nil
//        tabBarItems[0].imageInsets = UIEdgeInsetsMake(6,0,-6,0)
//
//        tabBarItems[1].title = nil
//        tabBarItems[1].imageInsets = UIEdgeInsetsMake(6,0,-6,0)
//
//        tabBarItems[2].title = nil
//        tabBarItems[2].imageInsets = UIEdgeInsetsMake(6,0,-6,0)
//
//        tabBarItems[3].title = nil
//        tabBarItems[3].imageInsets = UIEdgeInsetsMake(6,0,-6,0)
//
//        tabBarItems[4].title = nil
//        tabBarItems[4].imageInsets = UIEdgeInsetsMake(6,0,-6,0)

    }
}


