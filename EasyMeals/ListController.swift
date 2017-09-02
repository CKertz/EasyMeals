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
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
      //  self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
        navigationItem.title = "Lists"
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = titleDict as! [String : Any]
        //navigationItem.title = UIColor.white
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 0.25, green: 0.79, blue: 0.64, alpha: 1)
        self.navigationController?.navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        if Auth.auth().currentUser?.uid == nil {
            handleLogout()
        }
        collectionView?.backgroundColor = UIColor.white
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
        let thirdView = TabMenuController()
        // nav1.viewControllers = [tabMenuController,secondView,firstView]
        nav1.viewControllers = [thirdView]
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated:true, completion: nil)
        //present(nav1, animated: true, completion: nil)
    }
    let listTab = UITabBarItem(title: "Lists", image: nil, selectedImage: nil)
    
}
