//
//  PopUp1ViewController.swift
//  FinalProject2
//
//  Created by GWC Student on 8/22/17.
//  Copyright © 2017 GWC Student. All rights reserved.
//

import UIKit

class PopUp1ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var trophy: UIImageView!
    var array1 = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        array1 = ["Look yourself in the mirror and smile","List 3 positives about yourself and post them on your wall","Do 30 jumping jacks"]
        trophy.isHidden = true
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1")! as UITableViewCell
        
        cell1.textLabel?.text = array1[indexPath.row]
        cell1.textLabel?.numberOfLines=0;
        return cell1
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
    

    @IBAction func closePopUp1(_ sender: Any) {
        self.view.removeFromSuperview()
    }

}
