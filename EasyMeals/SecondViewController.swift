//
//  SecondViewController.swift
//  EasyMeals
//
//  Created by TBD on 7/13/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
   
    let easyMealsLabel: UILabel = {
        let label = UILabel()
        label.text = "EasyMeals"
        label.font=UIFont.init(name: "Futura Medium Bold", size: 50)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.black
        return label
    }()
    let continueAsGuestLabel: UILabel = {
        let label = UILabel()
        label.text = "Continue as guest"
        label.font=UIFont.init(name: "Futura Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.attributedText = NSAttributedString(string: "Continue as guest", attributes:
            [NSUnderlineStyleAttributeName:NSUnderlineStyle.styleSingle.rawValue])
        label.textColor = UIColor.purple
        return label
    }()
    let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.white
        button.setTitle("Sign In", for: .normal)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.init(name: "Futura Medium", size: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.white
        button.setTitle("Register", for: .normal)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.init(name: "Futura Medium" , size: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let loginContainerView: UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue

        view.addSubview(loginContainerView)
        view.addSubview(registerButton)
        view.addSubview(signInButton)
        view.addSubview(continueAsGuestLabel)
        view.addSubview(easyMealsLabel)
        
        //setupLoginContainer()
        setupRegisterButton()

    }
    func setupLoginContainer(){
        loginContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loginContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        loginContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    func setupRegisterButton(){
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerButton.topAnchor.constraint(equalTo: easyMealsLabel.bottomAnchor).isActive = true
        registerButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        signInButton.leftAnchor.constraint(equalTo: registerButton.leftAnchor).isActive = true
        signInButton.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 10).isActive = true
        signInButton.widthAnchor.constraint(equalTo: registerButton.widthAnchor).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        easyMealsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        easyMealsLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        easyMealsLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        easyMealsLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
                //continueAsGuestLabel.leftAnchor.constraint(equalTo: registerButton.leftAnchor).isActive = true
        continueAsGuestLabel.leftAnchor.constraint(equalTo: registerButton.leftAnchor).isActive = true
        continueAsGuestLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 10).isActive = true
        continueAsGuestLabel.widthAnchor.constraint(equalTo: registerButton.widthAnchor).isActive = true
        continueAsGuestLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }

}

