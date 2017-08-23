//
//  PopUp2ViewController.swift
//  FinalProject2
//
//  Created by GWC Student on 8/23/17.
//  Copyright © 2017 GWC Student. All rights reserved.
//

import UIKit

class PopUp2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var trophy: UIImageView!
    var array2 = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        array2 = ["Click the I’m feeling lucky button twice on Google.com","Make a simple dish (ex. grilled cheese sandwich, ramen)","Write your goals in a notebook"]
        trophy.isHidden = true
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2")! as UITableViewCell
        
        cell2.textLabel?.text = array2[indexPath.row]
        cell2.textLabel?.numberOfLines=0;
        return cell2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    let checkmark = 3
    var amtCheckmark = 0
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
            amtCheckmark -= 1
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
            amtCheckmark += 1
        }
        if amtCheckmark == 3{
            trophy.isHidden = false
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func closePopUp2(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
}
