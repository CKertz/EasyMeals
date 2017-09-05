//
//  tabMenuController.swift
//  EasyMeals
//
//  Created by Cooper on 8/4/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit
import Firebase

let cellId = "cellId"

class ListController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Lists"
        collectionView?.alwaysBounceVertical = true
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = titleDict as? [String : Any]
        //navigationItem.title = UIColor.white
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 0.25, green: 0.79, blue: 0.64, alpha: 1)
        self.navigationController?.navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        if Auth.auth().currentUser?.uid == nil {
            handleLogout()
        }
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(listCell.self, forCellWithReuseIdentifier: cellId)
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func handleLogout(){
        do{
            try Auth.auth().signOut()
        }catch let logoutError{
            print(logoutError)
        }
        let nav1 = UINavigationController()
        let thirdView = TabMenuController()
        // nav1.viewControllers = [tabMenuController,secondView,firstView]
        nav1.viewControllers = [thirdView]
        let alert = UIAlertController(title: "Being a guest", message: "As a guest, you will not be able to share any grocery lists.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Thanks!", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated:true, completion: nil)
        //present(nav1, animated: true, completion: nil)
    }
    let listTab = UITabBarItem(title: "Lists", image: nil, selectedImage: nil)
    
}
class listCell: UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupViews(){
        backgroundColor = UIColor.red
    }
}
