//
//  tabMenuController.swift
//  EasyMeals
//
//  Created by Cooper on 8/4/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit
import Firebase

class TabMenuController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        if Auth.auth().currentUser?.uid == nil {
            handleLogout()
        }
        collectionView?.backgroundColor = .green
    }
    func handleLogout(){
        do{
            try Auth.auth().signOut()
        }catch let logoutError{
            print(logoutError)
        }
        
        present(MainMenuController(), animated: true, completion: nil)
    }
    let listTab = UITabBarItem(title: "Lists", image: nil, selectedImage: nil)
    
}
