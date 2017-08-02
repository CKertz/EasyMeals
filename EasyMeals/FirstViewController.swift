//
//  FirstViewController.swift
//  EasyMeals
//
//  Created by TBD on 7/13/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {

    
   /* let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.blue
        button.setTitle("Register", for: .normal)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        //button.titleLabel?.font = UIFont.init(name: "Futura Medium" , size: 16)
        return button
    }()*/
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector (handleLogout))
        // Do any additional setup after loading the view, typically from a nib.
      /*  let firstViewController = FirstViewController()
        self.present(firstViewController,animated: true, completion: nil)
        
        //..present(firstViewController,animated: true, completion: nil)
        let mainMenuContainerView = UIView()
        
        view.addSubview(mainMenuContainerView)
        view.addSubview(loginButton)
        
        setupMainMenu()*/
    }
    func handleLogout(){
        let loginController = MainMenuController()
        present(loginController, animated: true, completion: nil)
    }
   /* func setupMainMenu(){

        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

