//
//  RegisterController.swift
//  EasyMeals
//
//  Created by Cooper on 7/27/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit
import Firebase

class RegisterController: UIViewController{
   
    let titleView: UIView = {
        let view = UIView()
        
        return view
    }()
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
        button.backgroundColor = UIColor(colorLiteralRed: 0.02, green: 0.00, blue: 0.49, alpha: 1)
        button.setTitle("Register Now", for: .normal)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.init(name: "Futura", size: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
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
        label.text = "Create an Account"
        label.font=UIFont.init(name: "Futura", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgImg = UIImageView(frame: UIScreen.main.bounds)
        bgImg.image = UIImage(named: "blurGroceryStoreImg")
        bgImg.contentMode = .scaleAspectFill
        //self.view.insertSubview(bgImg, at: 0)
        self.title = "Registration"
        navigationItem.title = "Registration"
        view.addSubview(inputContainerView)
        view.addSubview(registerBtn)
        view.addSubview(registerLabel)
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))//Close view if tapped on screen
        //self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "<", style: UIBarButtonItemStyle.plain, target: self, action: #selector(backToMainMenu))
        self.navigationController?.navigationBar.isHidden = false// Isn't default because in MainMenuController we want it do be hidden
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        view.backgroundColor = UIColor(colorLiteralRed: 0.25, green: 0.79, blue: 0.64, alpha: 1)

        //setUpRegistrationUI()
        setUpInputContainerView()
        setupLogRegButton()
        setUpRegLabel()
        
    }

    func backToMainMenu(){
        //dismiss(animated: true, completion: nil)
       // self.navigationController?.pushViewController(MainMenuController(), animated: true)
        self.navigationController?.popViewController(animated: true)
        let loginController = MainMenuController()
        //present(loginController, animated: true, completion: nil)
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

    func handleRegister(){
        guard let email = emailTextField.text, let password = passTextField.text else {
            return
        }
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passTextField.text!, completion: {(user, error) in
            
            
            if error != nil {
                print(error as Any)
                return
            }
            guard let uid = user?.uid else{
                return
            }
            let ref = Database.database().reference(fromURL: "https://easymeals-ad4d4.firebaseio.com/")
            let usersReference = ref.child("users").child(uid)
            let values = ["email": email, "password": password]
            usersReference.updateChildValues(values, withCompletionBlock: {(err, ref) in
            
                if err != nil {
                    print(err)
                    return
                }
                let tabViewController = TabMenuController()

                //let tabViewController = TabMenuController(collectionViewLayout: UICollectionViewFlowLayout())

                self.present(tabViewController, animated: true, completion: nil)//
            })
            
            })
    }
}


