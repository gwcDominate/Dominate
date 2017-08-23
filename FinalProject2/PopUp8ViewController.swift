
//
//  PopUp8ViewController.swift
//  FinalProject2
//
//  Created by GWC Student on 8/23/17.
//  Copyright © 2017 GWC Student. All rights reserved.
//

import UIKit

class PopUp8ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var trophy: UIImageView!
    var array3 = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        array3 = ["Borrow a book of a genre you typically don’t read from a library","Learn five words in a new language", "Talk to the person next to you the next time you’re in a public area"]
        trophy.isHidden = true
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell8 = tableView.dequeueReusableCell(withIdentifier: "cell8")! as UITableViewCell
        
        cell8.textLabel?.text = array3[indexPath.row]
        cell8.textLabel?.numberOfLines=0;
        return cell8
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
    
    
    @IBAction func closePopUp8(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
}
