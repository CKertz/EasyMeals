//
//  SecondViewController.swift
//  EasyMeals
//
//  Created by TBD on 7/13/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit
import Firebase

class MainMenuController: UIViewController {
    
    let bgImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "blurGroceryStoreImg")
        image.contentMode = .scaleAspectFill
        return image
    }()
    let easyMealsLabel: UILabel = {
        let label = UILabel()
        label.text = "EasyMeals"
        label.font = label.font.withSize(50)
        label.font = UIFont(name: "Futura", size: 48)
        label.font = UIFont.boldSystemFont(ofSize: 48)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()
    let continueAsGuestLabel: UILabel = {
        let label = UILabel()
        label.text = "Continue as guest"
        label.font=UIFont.init(name: "Futura", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.attributedText = NSAttributedString(string: "Continue as guest", attributes:
            [NSUnderlineStyleAttributeName:NSUnderlineStyle.styleSingle.rawValue])
        label.textColor = UIColor.blue
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        return label
    }()
    let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.white
        button.setTitle("Sign In", for: .normal)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.init(name: "Futura", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleSignIn), for: .touchUpInside)

        return button
        
    }()
    let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.white
        button.setTitle("Register", for: .normal)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.init(name: "Futura" , size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        return button
    }()
    let loginContainerView: UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    let continueBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.setTitle("Continue as guest", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleContinue), for: .touchUpInside)
        button.titleLabel?.font = UIFont.init(name: "Futura", size: 20)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(colorLiteralRed: 0.25, green: 0.79, blue: 0.64, alpha: 1)
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = titleDict as? [String : Any]
        let bgImg = UIImageView(frame: UIScreen.main.bounds)
        bgImg.image = UIImage(named: "blurGroceryStoreImg")
        bgImg.contentMode = .scaleAspectFill
        //self.view.insertSubview(bgImg, at: 0)
        //self.navigationController?.setNavigationBarHidden(true, animated: true) // WORKS
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 0.25, green: 0.79, blue: 0.64, alpha: 1)
        self.navigationController?.navigationBar.tintColor = UIColor.white
        view.addSubview(loginContainerView)
        view.addSubview(registerButton)
        view.addSubview(signInButton)
        //view.addSubview(continueAsGuestLabel)
        view.addSubview(easyMealsLabel)
        view.addSubview(continueBtn)
        //view.addSubview(bgImage)
        //setupLoginContainer()
        setUpUI()

    }
    func setupLoginContainer(){
        loginContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loginContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        loginContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    func setUpUI(){
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerButton.topAnchor.constraint(equalTo: easyMealsLabel.bottomAnchor, constant: 10).isActive = true
        registerButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        signInButton.leftAnchor.constraint(equalTo: registerButton.leftAnchor).isActive = true
        signInButton.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 10).isActive = true
        signInButton.widthAnchor.constraint(equalTo: registerButton.widthAnchor).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signInButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        signInButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        easyMealsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        easyMealsLabel.bottomAnchor.constraint(equalTo: registerButton.topAnchor, constant: -10).isActive = true
        easyMealsLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        easyMealsLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        /*easyMealsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        easyMealsLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        easyMealsLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        easyMealsLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true*/
        
        
                //continueAsGuestLabel.leftAnchor.constraint(equalTo: registerButton.leftAnchor).isActive = true
        
        
        continueBtn.leftAnchor.constraint(equalTo: registerButton.leftAnchor).isActive = true
        continueBtn.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 10).isActive = true
        continueBtn.widthAnchor.constraint(equalTo: registerButton.widthAnchor).isActive = true
        continueBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
       /* continueAsGuestLabel.leftAnchor.constraint(equalTo: registerButton.leftAnchor).isActive = true
        continueAsGuestLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 10).isActive = true
        continueAsGuestLabel.widthAnchor.constraint(equalTo: registerButton.widthAnchor).isActive = true
        continueAsGuestLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true*/
        
        /*bgImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        bgImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        bgImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        bgImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        */
        
    }
    func handleRegister(){
        //self.navigationController?.popViewController(animated: true)
        self.navigationController?.pushViewController(RegisterController(), animated: true)
        
        
        //present(loginController, animated: true, completion: nil) DOES NOT work with navigationController
    }
    func handleSignIn(){
       // self.navigationController?.popViewController(animated: true)
        self.navigationController?.pushViewController(SignInController(), animated: true)

       // let loginController = SignInController()
        //present(loginController, animated: true, completion: nil)
    }
    func handleContinue(){
        let tabViewController = TabMenuController()
        Auth.auth().signInAnonymously(completion: { (user, error) in
            if error != nil {
                print (error ?? "")
                return
            }
         print ("User logged in with id " + user!.uid)
        })
        //let tabViewController = TabMenuController(collectionViewLayout: UICollectionViewFlowLayout())
        self.present(tabViewController, animated: true, completion: nil)
       // self.navigationController?.pushViewController(tabViewController, animated: true)

        //let loginController = TabMenuController()
       // present(loginController, animated: true, completion: nil)
    }
    func handleTap(sender: UITapGestureRecognizer){
       // guard let a = (sender.view.as? UILabel)?.text else {return}
        print (333)
        let tabController = TabMenuController()
        present(tabController, animated: true, completion: nil)
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

}


