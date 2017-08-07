//
//  RegisterController.swift
//  EasyMeals
//
//  Created by Cooper on 7/27/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit

class SignInController: UIViewController{
    
    let passSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let emailSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let inputContainerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 6
        view.layer.masksToBounds = true
        return view
        
    }()
    let registerBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.red
        button.setTitle("Sign In", for: .normal)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.init(name: "Futura", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let passTextField: UITextField = {
        
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        return tf
        
    }()
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email Address"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    let whiteBgImgView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "whiteBG")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    let registerLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign In"
        label.font=UIFont.init(name: "Futura", size: 48)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.black
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        let bgImg = UIImageView(frame: UIScreen.main.bounds)
        bgImg.image = UIImage(named: "blurGroceryStoreImg")
        bgImg.contentMode = .scaleAspectFill
        self.view.insertSubview(bgImg, at: 0)
        
        view.addSubview(inputContainerView)
        view.addSubview(registerBtn)
        view.addSubview(registerLabel)
        //view.addSubview(emailTextField)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "left", style: UIBarButtonItemStyle.plain, target: self, action: #selector(backToMainMenu))
        self.navigationController?.navigationBar.isHidden = false
        //setUpRegistrationUI()
        setUpInputContainerView()
        setupLogRegButton()
        setUpRegLabel()
        
    }
    func backToMainMenu(){
        //dismiss(animated: true, completion: nil)
        //self.navigationController?.pushViewController(MainMenuController(), animated: true)
        self.navigationController?.popViewController(animated: true)

        let loginController = MainMenuController()
       // present(loginController, animated: true, completion: nil)
    }
    func setUpRegLabel(){
        registerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //registerLabel.topAnchor.constraint(equalTo: whiteBgImgView.frame.origin.x, constant: -50).isActive = true
        registerLabel.topAnchor.constraint(equalTo: inputContainerView.topAnchor, constant: -100).isActive = true // static value of 200 needs adjusts for other devices
        //registerLabel.topAnchor.constraint(equalTo: whiteBgImgView.topAnchor, constant: -50).isActive = true
        registerLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        registerLabel.heightAnchor.constraint(equalToConstant: 75).isActive = true
    }
    func setupLogRegButton(){
        
        //Constraints :  need x,y, width and height
        registerBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerBtn.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 12).isActive = true
        
        //how wide
        registerBtn.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        registerBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
    }
    
    
    func setUpRegistrationUI(){
        
        
        
        /*whiteBgImgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
         whiteBgImgView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
         whiteBgImgView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
         whiteBgImgView.heightAnchor.constraint(equalToConstant: 50).isActive = true
         */
        registerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //registerLabel.topAnchor.constraint(equalTo: whiteBgImgView.frame.origin.x, constant: -50).isActive = true
        registerLabel.topAnchor.constraint(equalTo: whiteBgImgView.topAnchor, constant: -200).isActive = true // static value of 200 needs adjusts for other devices
        //registerLabel.topAnchor.constraint(equalTo: whiteBgImgView.topAnchor, constant: -50).isActive = true
        registerLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        registerLabel.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTextField.topAnchor.constraint(equalTo: registerLabel.bottomAnchor, constant:6).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: whiteBgImgView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    func setUpInputContainerView(){
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        //inputContainerView.addSubview(passSeparator)
        inputContainerView.addSubview(emailTextField)
        inputContainerView.addSubview(emailSeparator)
        inputContainerView.addSubview(passTextField)
        
        emailTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/2).isActive = true
        
        emailSeparator.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        emailSeparator.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeparator.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        emailSeparator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        passTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        passTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        passTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        passTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/2).isActive = true
        
        
    }
}

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
