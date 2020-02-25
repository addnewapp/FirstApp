//
//  Course.swift
//  myfirstiosappz
//
//  Created by ZPG's Mac on 8/7/17.
//  Copyright © 2017 Code With ZPG. All rights reserved.
//

import Foundation
import UIKit

struct Info {
    var image: String?
    var title: String?
}

class CourseController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableVIew: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        return tableView
    }()
    
    let courseCellId = "courseCellId"
    let BOSArray = [Info(image: "image1", title: "Relational Database Design"),
                      Info(image: "image2", title: "Software Project Management"),
                      Info(image: "image6", title: "Multimendia Application Design"),
                      Info(image: "image7", title: "Information System Design"),
                      Info(image: "image8", title: "Computer Networks"),
                      Info(image: "image9", title: "Adv Artificail Intelligence"),
                      Info(image: "image5", title: "Final Year Project"),
                      Info(image: "image1", title: "Intenet Commerce Technology")]
    
    let IADArray = [Info(image: "image1", title: "Discrete Mathematics"),
                      Info(image: "image2", title: "Software Engineering"),
                      Info(image: "image3", title: "Security in System Design"),
                      Info(image: "image4", title: "Information Management"),
                      Info(image: "image5", title: "Network and The Internet"),
                      Info(image: "image8", title: "Data Model & Database Design"),
                      Info(image: "image9", title: "Data Model & Relational Design"),
                      Info(image: "image1", title: "Database Security")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.title = "Courses"
//        self.navigationItem.title = "Your Title"
        setuplogoButton()
        setupcourseButton()
        setupTableView()
    }

    // logo imaga - left bar button item in nav bar
    fileprivate func setuplogoButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "icon").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlelogo))
    }
    @objc func handlelogo() {
        print ("just a demo for handle logo")
    }
    // logout button - right bar button item in nav bar
    fileprivate func setupcourseButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "book").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlebook))
    }
    @objc func handlebook() {
        print ("just a demo for handle book")
    }
    
    func setupTableView() {
        // assign this two protocals to the table view
        tableVIew.register(courseCell.self, forCellReuseIdentifier: courseCellId)
        tableVIew.delegate = self
        tableVIew.dataSource = self
        
        
        
        view.addSubview(tableVIew)
        tableVIew.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    // set the methods to confirm this two protocals
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return IADArray.count
        }
        return BOSArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: courseCellId, for: indexPath) as! courseCell
        cell.pictureImageView.image = UIImage(named: BOSArray[indexPath.item].image!)
        cell.titleLabel.text = BOSArray[indexPath.item].title
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        if indexPath.section == 1 {
            cell.pictureImageView.image = UIImage(named: IADArray[indexPath.item].image!)
            cell.titleLabel.text = IADArray[indexPath.item].title
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "International Advanced Diploma"
        }
        return "Bachelor of Science (CSSE)"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("just a demo")
    }

    
}

class courseCell: UITableViewCell {
    
    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.setCellShadow()
        return view
    }()
    
    let pictureImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = UIColor.darkGray
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    func setup() {
        backgroundColor = UIColor(red: 250, green: 250, blue: 250)
        addSubview(cellView)
        cellView.addSubview(pictureImageView)
        cellView.addSubview(titleLabel)
        
        cellView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 6, paddingLeft: 8, paddingBottom: 4, paddingRight: 8)
        
        pictureImageView.setAnchor(top: nil, left: cellView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 30, height: 30)
        pictureImageView.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        
        titleLabel.setAnchor(top: nil, left: pictureImageView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 25, paddingBottom: 0, paddingRight: 0, height: 0)
        titleLabel.centerYAnchor.constraint(equalTo: pictureImageView.centerYAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




