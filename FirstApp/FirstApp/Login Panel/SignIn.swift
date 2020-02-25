//
//  SignIn.swift
//  myfirstiosappz
//
//  Created by ZPG's Mac on 8/7/17.
//  Copyright © 2017 Code With ZPG. All rights reserved.
//

import UIKit
import Firebase

class SignInVC: UIViewController {
    
    let addimageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "plus_photo").withRenderingMode(.alwaysOriginal), for: .normal)
        button.isEnabled = false
        return button
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.02)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        tf.backgroundColor = UIColor(white: 0, alpha: 0.02)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    @objc func handleTextInputChange() {
        let isFormValid = emailTextField.text?.characters.count ?? 0 > 0 && passwordTextField.text?.characters.count ?? 0 > 0
        
        if isFormValid {
            signInButton.isEnabled = true
            signInButton.backgroundColor = UIColor.rgb(red: 240, green: 160, blue: 56)
        } else {
            signInButton.isEnabled = false
            signInButton.backgroundColor = UIColor.rgb(red: 232, green: 175, blue: 100)
        }
    }
    
    // set the sign in button & its attributes
    let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("LogIn", for: .normal)
        button.backgroundColor = UIColor.rgb(red: 232, green: 175, blue: 100)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.5)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleLogIn), for: .touchUpInside)
        return button
    }()
    
    // implement the login function
    @objc func handleLogIn() {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }

        Auth.auth().signIn(withEmail: email, password: password, completion: { (user, err) in
            
            if let err = err {
                print("Failed to sign in with email:", err)
                return
            }
            
            print("Successfully logged back in with user:", user?.uid ?? "")
            
            guard let mainTabBarController = UIApplication.shared.keyWindow?.rootViewController as? MainTabBarController else { return }
            
            mainTabBarController.setupViewControllers()
            self.dismiss(animated: true, completion: nil)
            
        })
    }
    
    // set the sign up button & its attributes
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(UIColor(red: 247/255, green: 154/255, blue: 27/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.5)
        button.addTarget(self, action: #selector(handlePopUpSignUpVC), for: .touchUpInside)
        return button
        
    }()
    
    // implement this popup view controller
    @objc func handlePopUpSignUpVC() {
        let signUpVC = SignUpVC()
        self.addChildViewController(signUpVC)
        signUpVC.view.frame = CGRect(x: 0.0, y: 0.0, width: view.frame.size.width, height: view.frame.size.height)
        signUpVC.view.layer.cornerRadius = 5
        self.view.addSubview(signUpVC.view)
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromTop
        navigationController?.view.layer.add(transition, forKey: kCATransition)
        signUpVC.didMove(toParentViewController: self)
        self.view.backgroundColor = UIColor.init(red: 250/255, green: 87/255, blue: 78/255, alpha: 0.3)
    }
    
    // set the help button & its attributes
    let helpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Help", for: .normal)
        button.setTitleColor(UIColor(red: 247/255, green: 154/255, blue: 27/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.5)
        button.addTarget(self, action: #selector(handlePopUpHelpVC), for: .touchUpInside)
        return button
    }()
    
    // implement the help function & its attributes
    @objc func handlePopUpHelpVC() {
        let helpVC = HelpVC()
        self.addChildViewController(helpVC)
        helpVC.view.frame = CGRect(x: 0.0, y: 0.0, width: view.frame.size.width, height: view.frame.size.height)
        helpVC.view.layer.cornerRadius = 5
        self.view.addSubview(helpVC.view)
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromTop
        navigationController?.view.layer.add(transition, forKey: kCATransition)
        helpVC.didMove(toParentViewController: self)
        self.view.backgroundColor = UIColor.init(red: 250/255, green: 87/255, blue: 78/255, alpha: 0.3)
    }
    
    // set the slogan button & its attributes
    let sloganButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("-- Enter To Learn, Leave To Achieve --", for: .normal)
        button.setTitleColor(UIColor(red: 247/255, green: 154/255, blue: 27/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.addTarget(self, action: #selector(handlejumptoSignInVC), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    
    // implement the handle slogan function & its attributes
    @objc func handlejumptoSignInVC() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let signInVC = SignInVC()
        appDelegate.window?.rootViewController = UINavigationController(rootViewController: signInVC)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        self.navigationController?.isNavigationBarHidden = true
   
        view.addSubview(addimageButton)
        view.addSubview(signUpButton)
        view.addSubview(helpButton)
        view.addSubview(sloganButton)
        
        addimageButton.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 60, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 120, height: 120)
        addimageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        signUpButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 357, paddingLeft: 48, paddingBottom: 0, paddingRight: 0, width: 65, height: 60)
        helpButton.anchor(top: view.topAnchor, left: nil, bottom: nil, right: view.rightAnchor, paddingTop: 359, paddingLeft: 0, paddingBottom: 0, paddingRight: 40, width: 60, height: 60)
        sloganButton.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 35)
        
        setupInputFields()
        swipeDownToClose()
    }
    
    fileprivate func setupInputFields() {
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, signInButton])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 13
        
        view.addSubview(stackView)
        
        stackView.anchor(top: addimageButton.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 159)
    }
    @objc func swipeDownToClose() {
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipeDownAction(sender:)))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        view.addGestureRecognizer(swipeDown)
    }
    
    @objc func swipeDownAction(sender: UISwipeGestureRecognizer) {
        closeView()
        self.parent?.view.backgroundColor = UIColor.init(red: 255, green: 255, blue: 255, alpha: 0.3)
    }
    
    func closeView() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromBottom
        navigationController?.view.layer.add(transition, forKey:kCATransition)
        let _ = navigationController?.popViewController(animated: false)
        self.view.removeFromSuperview()
    }
}


