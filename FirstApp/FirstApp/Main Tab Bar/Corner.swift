//
//  Corner.swift
//  myfirstiosappz
//
//  Created by ZPG's Mac on 8/7/17.
//  Copyright © 2017 Code With ZPG. All rights reserved.
//

import UIKit
import Firebase

class CornerController: UIViewController {
    
    // image 1
    let image1Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "image1").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image1), for: .touchUpInside)
        return button
    }()
    @objc func image1() {
        print ("just a demo for this image 1")
    }
    
    // image 2
    let image2Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "image2").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image2), for: .touchUpInside)
        return button
    }()
    @objc func image2() {
        print ("just a demo for this image 2")
    }
    
    // image 3
    let image3Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "image3").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image3), for: .touchUpInside)
        return button
    }()
    @objc func image3() {
        print ("just a demo for this image 3")
    }
    
    // image 4
    let image4Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "image4").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image4), for: .touchUpInside)
        return button
    }()
    @objc func image4() {
        print ("just a demo for this image 4")
    }
    
    // image 5
    let image5Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "image5").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image5), for: .touchUpInside)
        return button
    }()
    @objc func image5() {
        print ("just a demo for this image 5")
    }
    
    // image 6
    let image6Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "image6").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image6), for: .touchUpInside)
        return button
    }()
    @objc func image6() {
        print ("just a demo for this image 6")
    }
    
    // image 7
    let image7Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "image7").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image7), for: .touchUpInside)
        return button
    }()
    @objc func image7() {
        print ("just a demo for this image 7")
    }
    
    // image 8
    let image8Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "image8").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image8), for: .touchUpInside)
        return button
    }()
    @objc func image8() {
        print ("just a demo for this image 8")
    }
    
    // image 9
    let image9Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "image9").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image9), for: .touchUpInside)
        return button
    }()
    @objc func image9() {
        print ("just a demo for this image 9")
    }
    
    // image 10
    let image10Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "number1").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image10), for: .touchUpInside)
        return button
    }()
    @objc func image10() {
        print ("just a demo for this image 10")
    }
    
    // image 11
    let image11Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "number2").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image11), for: .touchUpInside)
        return button
    }()
    @objc func image11() {
        print ("just a demo for this image 11")
    }
    
    // image 12
    let image12Button: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "number3").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(image12), for: .touchUpInside)
        return button
    }()
    @objc func image12() {
        print ("just a demo for this image 12")
    }
    
    // folder title
    let folder1Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Report Card", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    let folder2Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Module Mark", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    let folder3Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Result Slip", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    let folder4Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Report Card", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    let folder5Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Report Card", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    let folder6Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Report Card", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    let folder7Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Report Card", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    let folder8Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Report Card", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    let folder9Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Report Card", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    let folder10Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Folder 1", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    let folder11Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Folder 2", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    let folder12Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Folder 3", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 50/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.isEnabled = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255)
        navigationItem.title = "My Corner"
        
        view.addSubview(image1Button)
        view.addSubview(image2Button)
        view.addSubview(image3Button)
        
        view.addSubview(folder1Button)
        view.addSubview(folder2Button)
        view.addSubview(folder3Button)
        
        view.addSubview(image4Button)
        view.addSubview(image5Button)
        view.addSubview(image6Button)
        
        view.addSubview(folder4Button)
        view.addSubview(folder5Button)
        view.addSubview(folder6Button)
        
        view.addSubview(image7Button)
        view.addSubview(image8Button)
        view.addSubview(image9Button)
        
        view.addSubview(folder7Button)
        view.addSubview(folder8Button)
        view.addSubview(folder9Button)
        
        view.addSubview(image10Button)
        view.addSubview(image11Button)
        view.addSubview(image12Button)
        
        view.addSubview(folder10Button)
        view.addSubview(folder11Button)
        view.addSubview(folder12Button)
        
        // image button
        image1Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 80, paddingLeft: 43, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        image2Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 80, paddingLeft: 166, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        image3Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 80, paddingLeft: 289, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        
        image4Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 200, paddingLeft: 43, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        image5Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 200, paddingLeft: 166, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        image6Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 200, paddingLeft: 289, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        
        image7Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 320, paddingLeft: 43, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        image8Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 320, paddingLeft: 166, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        image9Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 320, paddingLeft: 289, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        
        image10Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 435, paddingLeft: 43, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        image11Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 435, paddingLeft: 166, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        image12Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 435, paddingLeft: 289, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)

        // folder name
        folder1Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 170, paddingLeft: 33, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        folder2Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 170, paddingLeft: 156, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        folder3Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 170, paddingLeft: 279, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
    
        folder4Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 290, paddingLeft: 33, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        folder5Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 290, paddingLeft: 156, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        folder6Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 290, paddingLeft: 279, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        
        folder7Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 410, paddingLeft: 33, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        folder8Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 410, paddingLeft: 156, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        folder9Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 410, paddingLeft: 279, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        
        folder10Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 520, paddingLeft: 35, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        folder11Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 520, paddingLeft: 158, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        folder12Button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 520, paddingLeft: 281, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)

        
        fetchUser()
        setuplogoButton()
        setuplogoutButton()
    }
    
    fileprivate func fetchUser() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            print(snapshot.value ?? "")
    
            guard let dictionary = snapshot.value as? [String: Any] else { return }
            let username = dictionary["username"] as? String
            self.navigationItem.title = username
            
        }) { (err) in
            print("Failed to fetch user:", err)
        }
    }
    
    // logo imaga - left bar button item in nav bar
    fileprivate func setuplogoButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "icon") .withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlelogo))
    }
    @objc func handlelogo() {
        print ("just a demo for handle logo")
    }
    
    // logout button - right bar button item in nav bar
    fileprivate func setuplogoutButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "user").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlelogout))
    }
    // implement this handle logout function
    @objc func handlelogout() {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "Switch User", style: .destructive, handler: { (_) in
            
            do {
                try Auth.auth().signOut()
                
                //what happens? we need to present some kind of login controller
                
                let signInVC = SignInVC()
                let navController = UINavigationController(rootViewController: signInVC)
                self.present(navController, animated: true, completion: nil)
                
            } catch let signOutErr {
                print("Failed to sign out:", signOutErr)
            }
            
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
}





