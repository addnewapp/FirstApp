//
//  ViewController.swift
//  myfirstiosapp
//
//  Created by ZPG's Mac on 9/12/17.
//  Copyright © 2017 Code With ZPG. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    // construct a collection view in the UIViewController component.
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        // set the page default scroll direction to horizental
        // set the gaps between pages to zero
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.dataSource = self
        cv.delegate = self
        cv.isPagingEnabled = true
        return cv
    }()
    
    let cellId = "cellId"
    
    // set the pages & its attributes in an array page and reture these pages
    let pages: [Page] = {
        let firstPage = Page(title: "First Tab Bar Introduction", message: "\"Don’t regret the things you've done. Regret the things you didn’t do when you had the chance.\"", imageName: "page3")
        
        let secondPage = Page(title: "Second Tab Bar Introduction", message: "\"XXXXXXXXXXXXXXX\"", imageName: "page3")
        
        let thirdPage = Page(title: "Third Tab Bar Introduction", message: "\"Soclial media and technology have brought power back to the people\"", imageName: "page3")
        
        let fourthPage = Page(title: "Fourth Tab Bar Introduction", message: "\"XXXXXXXXXXXXXXX\"", imageName: "page3")
        
        let fifthPage = Page(title: "Fifth Tab Bar Introduction", message: "\"XXXXXXXXXXXXXXX\"", imageName: "page3")
        
        return [firstPage, secondPage, thirdPage, fourthPage, fifthPage]
    }()
    
    // construct the page controll indicator & its attributes in page cells of the uiview collection
    lazy var pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.pageIndicatorTintColor = .lightGray
        pc.currentPageIndicatorTintColor = UIColor(red: 247/255, green: 154/255, blue: 27/255, alpha: 1)
        pc.numberOfPages = self.pages.count
        return pc
    }()
    
    // set the skip button & its attributes
    lazy var skipButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Skip", for: .normal)
        button.setTitleColor(UIColor(red: 240/255, green: 160/255, blue: 56/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.5)
        button.addTarget(self, action: #selector(skip), for: .touchUpInside)
        return button
    }()
    
    // implement the skip function
    @objc func skip() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let signUpVC = SignUpVC()
        appDelegate.window?.rootViewController = UINavigationController(rootViewController: signUpVC)
        
    }
    
    // set the next button & its attributes
    lazy var nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next", for: .normal)
        button.setTitleColor(UIColor(red: 247/255, green: 154/255, blue: 27/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.5)
        button.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        return button
    }()
    
    // implement the next function & its attributes
    @objc func nextPage() {
        // this is the last page
        if pageControl.currentPage == pages.count - 1 {
            return
        }
        
        // page control indicator to cont follow the page count
        let indexPath = IndexPath(item: pageControl.currentPage + 1, section: 0)
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        pageControl.currentPage += 1
        
    }
    
    var pageControlBottomAnchor: NSLayoutConstraint?
    var skipButtonTopAnchor: NSLayoutConstraint?
    var nextButtonTopAnchor: NSLayoutConstraint?
    
    // set the preferred status bar style (font color)
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default //or.lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.showsHorizontalScrollIndicator = false // disable the horizental scroll bar
        navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.isNavigationBarHidden = true
        
        view.addSubview(collectionView)  //  add the sbuview collection view
        view.addSubview(pageControl)  //  add the subview page control
        view.addSubview(skipButton)  //  add the subview skip button
        view.addSubview(nextButton)  // add the subview next button
        
        // set the page control indicator position
        pageControl.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 40)
        
        // set the skip button position
        skipButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 60, height: 50)
        // set the next button position
        nextButton.anchor(top: view.topAnchor, left: nil, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 60, height: 50)
        // set auto layout when we rotate the screen orientation.
        collectionView.anchorToTop(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
        
        registerCells()
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        let pageNumber = Int(targetContentOffset.pointee.x / view.frame.width)
        pageControl.currentPage = pageNumber
        
    }
    
    // register Pagecells
    fileprivate func registerCells() {
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PageCell
        
        let page = pages[(indexPath as NSIndexPath).item]
        cell.page = page
        
        return cell
        
    }
    // set the individual page(there are five) to cover the entire CollectionView
    // the pages default scrool direction is vertical
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    // Fill up the entire page (contains these elements) & the login page elememts
    // when rotate the screen orientation
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        
        collectionView.collectionViewLayout.invalidateLayout()
        
        let indexPath = IndexPath(item: pageControl.currentPage, section: 0)
        // scroll to one proper page after the entire screen orientation is retated
        DispatchQueue.main.async {
            self.collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            self.collectionView.reloadData()
        }
        
    }
    
}
struct Page {
    let title: String
    let message: String
    let imageName: String
}
