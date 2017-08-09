//
//  tabMenuController.swift
//  EasyMeals
//
//  Created by Cooper on 8/4/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit
import Firebase

class ListController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        if Auth.auth().currentUser?.uid == nil {
            handleLogout()
        }
        collectionView?.backgroundColor = UIColor(colorLiteralRed: 0.25, green: 0.79, blue: 0.64, alpha: 1)
    }
    func handleLogout(){
        do{
            try Auth.auth().signOut()
        }catch let logoutError{
            print(logoutError)
        }
        let nav1 = UINavigationController()
        let firstView = MainMenuController(nibName: nil, bundle: nil)
        let secondView = RegisterController(nibName: nil, bundle: nil)
        // nav1.viewControllers = [tabMenuController,secondView,firstView]
        nav1.viewControllers = [firstView]
        //present(MainMenuController(), animated: true, completion: nil)
    }
    let listTab = UITabBarItem(title: "Lists", image: nil, selectedImage: nil)
    
}
