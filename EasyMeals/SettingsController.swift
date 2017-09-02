//
//  SettingsController.swift
//  EasyMeals
//
//  Created by Cooper on 8/27/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit
import Firebase

/*class SettingsController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Settings"
        //self.navigationController?.navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        //tableView.backgroundColor = UIColor(colorLiteralRed: 0.25, green: 0.79, blue: 0.64, alpha: 1)
        tableView.register(Cell.self, forCellReuseIdentifier: "cellId")



    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int{
            return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: NSIndexPath)
        -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
    }
    
}
class Cell: UITableViewCell{
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpViews()
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setUpViews(){
        
    }
}*/

class SettingsController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let myArray: NSArray = ["Logout"]//list all table elements here
    private var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Settings"
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = titleDict as! [String : Any]
        //navigationItem.title = UIColor.white
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 0.25, green: 0.79, blue: 0.64, alpha: 1)
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        //myTableView.backgroundColor = UIColor(colorLiteralRed: 0.25, green: 0.79, blue: 0.64, alpha: 1)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(myArray[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(myArray[indexPath.row])"
        return cell
    }
}
