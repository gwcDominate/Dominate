
//
//  PopUp9ViewController.swift
//  FinalProject2
//
//  Created by GWC Student on 8/23/17.
//  Copyright © 2017 GWC Student. All rights reserved.
//

import UIKit

class PopUp9ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var trophy: UIImageView!
    var array3 = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        array3 = ["Go to a place you frequently visit and draw it with only color pencils","Send a postcard or a handwritten letter to your friend/family member","Try a drink you’ve never tried before"]
        trophy.isHidden = true
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell9 = tableView.dequeueReusableCell(withIdentifier: "cell9")! as UITableViewCell
        
        cell9.textLabel?.text = array3[indexPath.row]
        cell9.textLabel?.numberOfLines=0;
        return cell9
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
    
    
    @IBAction func closePopUp9(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
}
