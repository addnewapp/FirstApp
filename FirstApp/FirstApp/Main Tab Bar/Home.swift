//
//  Home.swift
//  myfirstiosappz
//
//  Created by ZPG's Mac on 8/7/17.
//  Copyright © 2017 Code With ZPG. All rights reserved.
//

import UIKit
import Firebase

class HomeController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 250, green: 250, blue: 250)
        navigationItem.title = "Home"
        tableView.separatorColor = UIColor.rgb(red: 229, green: 231, blue: 235)
        tableView.sectionHeaderHeight = 269
        
        setuplogoButton()
        setuppostButton()
    }
    // logo imaga - left bar button item in nav bar
    fileprivate func setuplogoButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "icon").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlelogo))
    }
    @objc func handlelogo() {
        print ("just a demo for handle logo")
    }
    // logout button - right bar button item in nav bar
    fileprivate func setuppostButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "post").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlepost))
    }
    @objc func handlepost() {
        print ("just a demo for handle post")
    }
}

