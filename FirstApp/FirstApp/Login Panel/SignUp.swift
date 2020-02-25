//
//  SignUp.swift
//  myfirstiosappz
//
//  Created by ZPG's Mac on 8/7/17.
//  Copyright © 2017 Code With ZPG. All rights reserved.
//

import UIKit
import Firebase

class SignUpVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    let addimageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "plus_photo").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handleaddimage), for: .touchUpInside)
        return button
    }()
    
    // implement the handle add image function & its attributes
    @objc func handleaddimage() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        present(imagePickerController, animated: true, completion: nil)
    }
    
    // image picker controller
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let editedImage = info["UIImagePickerControllerEditedImage"] as? UIImage {
            addimageButton.setImage(editedImage.withRenderingMode(.alwaysOriginal), for: .normal)
        } else if let originalImage = info["UIImagePickerControllerOriginalImage"] as? UIImage {
            addimageButton.setImage(originalImage.withRenderingMode(.alwaysOriginal), for: .normal)
        }
        
        // set the added image style in the add image area
        addimageButton.layer.cornerRadius = addimageButton.frame.width/2
        addimageButton.layer.masksToBounds = true
        addimageButton.layer.borderColor = UIColor.white.cgColor
        addimageButton.layer.borderWidth = 3
        
        dismiss(animated: true, completion: nil) // manually dismiss the image picker when selected a image
    }
    
    let usernameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Username"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.02)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
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
        let isFormValid = emailTextField.text?.characters.count ?? 0 > 0 && usernameTextField.text?.characters.count ?? 0 > 0 && passwordTextField.text?.characters.count ?? 0 > 0
        
        if isFormValid {
            signUpButton.isEnabled = true
            signUpButton.backgroundColor = UIColor.rgb(red: 240, green: 160, blue: 56)
        } else {
            signUpButton.isEnabled = false
            signUpButton.backgroundColor = UIColor.rgb(red: 232, green: 175, blue: 100)
        }
    }
    
    // set the sign up button & its attributes
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = UIColor.rgb(red: 232, green: 175, blue: 100)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.5)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        return button
    }()
    
    // implement the handle sign up function & its attribute3
    @objc func handleSignUp() {
        guard let email = emailTextField.text, email.count > 0 else { return }
        guard let username = usernameTextField.text, username.count > 0 else { return }
        guard let password = passwordTextField.text, password.count > 0 else { return }
        
        Auth.auth().createUser(withEmail: email, password: password, completion: { (user: User?, error: Error?) in
            
            if let err = error {
                print("Failed to create user:", err)
                return
            }
            print("Successfully created user account:", user?.uid ?? "")
            
            guard let image = self.addimageButton.imageView?.image else { return }
            guard let uploadData = UIImageJPEGRepresentation(image, 0.3) else { return }
            let filename = NSUUID().uuidString
            Storage.storage().reference().child("added profile image").child(filename).putData(uploadData, metadata: nil, completion: { (metadata, err) in
                
                if let err = err {
                    print("Failed to upload profile image:", err)
                    return
                }
                
                guard let profileImageUrl = metadata?.downloadURL()?.absoluteString else { return }
                print("Successfully added user profile image:", profileImageUrl)
                guard let uid = user?.uid else { return }
                
                let dictionaryValues = ["username": username, "profileImageUrl": profileImageUrl]
                let values = [uid: dictionaryValues]
                
                Database.database().reference().child("users").updateChildValues(values, withCompletionBlock: { (err, ref) in
                    if let err = err {
                        print("Failed to save user info into db:", err)
                        return
                    }
                    print("Successfully saved user info into database")
                    // successfully signed in user to firebase and showing the main tab bar
                    let delegate = UIApplication.shared.delegate as! AppDelegate
                    delegate.changeRootView(viewController: MainTabBarController())
                })
            })
        })
    }
    
    // set the log in button & its attributes
    let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 56/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.5)
        button.addTarget(self, action: #selector(handlePopUpSignInVC), for: .touchUpInside)
        return button
    }()

    // implement this popup view controller
    @objc func handlePopUpSignInVC() {
        let signInVC = SignInVC()
        self.addChildViewController(signInVC)
        signInVC.view.frame = CGRect(x: 0.0, y: 0.0, width: view.frame.size.width, height: view.frame.size.height)
        signInVC.view.layer.cornerRadius = 5
        self.view.addSubview(signInVC.view)
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromTop
        navigationController?.view.layer.add(transition, forKey: kCATransition)
        signInVC.didMove(toParentViewController: self)
        self.view.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    // set the help button & its attributes
    let helpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Help", for: .normal)
        button.setTitleColor(UIColor(red: 247/255, green: 154/255, blue: 27/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.5)
        button.addTarget(self, action: #selector(handlePopUpHelpVC), for: .touchUpInside)
        //button.isEnabled = false
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
        self.view.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    // set the slogan button & its attributes
    let sloganButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("-- Enter To Learn, Leave To Achieve --", for: .normal)
        button.setTitleColor(UIColor(red: 247/255, green: 154/255, blue: 27/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.addTarget(self, action: #selector(handlejumptoSignUpVC), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    
    // implement the handle slogan function & its attributes
    @objc func handlejumptoSignUpVC() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let signUpVC = SignUpVC()
        appDelegate.window?.rootViewController = UINavigationController(rootViewController: signUpVC)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        self.navigationController?.isNavigationBarHidden = true
        
        view.addSubview(addimageButton)
        view.addSubview(signInButton)
        view.addSubview(helpButton)
        view.addSubview(sloganButton)
        
        addimageButton.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 45, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 120, height: 120)
        addimageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        signInButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 385, paddingLeft: 45, paddingBottom: 0, paddingRight: 0, width: 60, height: 55)
        helpButton.anchor(top: view.topAnchor, left: nil, bottom: nil, right: view.rightAnchor, paddingTop: 390, paddingLeft: 0, paddingBottom: 0, paddingRight: 40, width: 60, height: 50)
        sloganButton.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 35)
        
        setupInputFields()
    }
    
    fileprivate func setupInputFields() {
        let stackView = UIStackView(arrangedSubviews: [emailTextField, usernameTextField, passwordTextField, signUpButton])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        
        view.addSubview(stackView)
        
        stackView.anchor(top: addimageButton.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 200)
    }
}
extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?,  paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
}




