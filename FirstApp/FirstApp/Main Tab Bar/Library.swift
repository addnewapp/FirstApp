//
//  Library.swift
//  myfirstiosappz
//
//  Created by ZPG's Mac on 8/7/17.
//  Copyright © 2017 Code With ZPG. All rights reserved.
//

import UIKit

class LibraryController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 250, green: 250, blue: 250)
        navigationItem.title = "E-Library"
        tableView.separatorColor = UIColor.rgb(red: 229, green: 231, blue: 235)
        tableView.sectionHeaderHeight = 26
        
        setuplogoButton()
        setuplibraryButton()
    }
    // logo imaga - left bar button item in nav bar
    fileprivate func setuplogoButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "icon").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlenoaction))
    }
    @objc func handlenoaction() {
        print ("just a demo for handle logo")
    }
    // logout button - right bar button item in nav bar
    fileprivate func setuplibraryButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "bookupload").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlelibrary))
    }
    @objc func handlelibrary() {
        print ("just a demo for handle library")
    }
}


