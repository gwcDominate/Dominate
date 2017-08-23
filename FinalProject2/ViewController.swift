//
//  ViewController.swift
//  FinalProject2
//
//  Created by GWC Student on 8/21/17.
//  Copyright © 2017 GWC Student. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    //MARK: PROPERTIES
    
    //mainpage
    @IBOutlet weak var dominateLogo: UIImageView!
    @IBOutlet weak var tasksButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
   
    //profile
    @IBOutlet weak var profileheading: UILabel!
    @IBOutlet weak var profilecircle: UIImageView!
    @IBOutlet weak var accomplishmentslabel: UILabel!
    
    @IBOutlet weak var backProfile: UIButton!
    
    //taskspage
    @IBOutlet weak var tasksheading: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var backtasks: UIButton!
    
    //settingspage
    @IBOutlet weak var settingsheading: UILabel!
    @IBOutlet weak var pushNotifications: UILabel!
    @IBOutlet weak var iCloud: UILabel!
    @IBOutlet weak var privacypolicy: UILabel!
    @IBOutlet weak var aboutUsHeading: UILabel!
    @IBOutlet weak var aboutUs: UILabel!
    @IBOutlet weak var acknowledgmentsheading: UILabel!
    @IBOutlet weak var acknowledgements: UILabel!
    @IBOutlet weak var backSettings: UIButton!

    //MARK: Actions
    
    @IBAction func ShowPopUp1(_ sender: Any) {
        
        let popOverVC1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp1ID") as! PopUp1ViewController
        self.addChildViewController(popOverVC1)
        popOverVC1.view.frame = self.view.frame
        self.view.addSubview(popOverVC1.view)
        popOverVC1.didMove(toParentViewController: self)
    }
    @IBAction func ShowPopUp2(_ sender: Any) {
        let popOverVC2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp2ID") as! PopUp2ViewController
        self.addChildViewController(popOverVC2)
        popOverVC2.view.frame = self.view.frame
        self.view.addSubview(popOverVC2.view)
        popOverVC2.didMove(toParentViewController: self)
    }

    @IBAction func ShowPopUp3(_ sender: Any) {
        let popOverVC3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp3ID") as! PopUp3ViewController
        self.addChildViewController(popOverVC3)
        popOverVC3.view.frame = self.view.frame
        self.view.addSubview(popOverVC3.view)
        popOverVC3.didMove(toParentViewController: self)
    }

    @IBAction func ShowPopUp4(_ sender: Any) {
        let popOverVC4 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp4ID") as! PopUp4ViewController
        self.addChildViewController(popOverVC4)
        popOverVC4.view.frame = self.view.frame
        self.view.addSubview(popOverVC4.view)
        popOverVC4.didMove(toParentViewController: self)
    }
    
    @IBAction func ShowPopUp5(_ sender: Any) {
        let popOverVC5 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp5ID") as! PopUp5ViewController
        self.addChildViewController(popOverVC5)
        popOverVC5.view.frame = self.view.frame
        self.view.addSubview(popOverVC5.view)
        popOverVC5.didMove(toParentViewController: self)
    }

    @IBAction func ShowPopUp6(_ sender: Any) {
        let popOverVC6 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp6ID") as! PopUp6ViewController
        self.addChildViewController(popOverVC6)
        popOverVC6.view.frame = self.view.frame
        self.view.addSubview(popOverVC6.view)
        popOverVC6.didMove(toParentViewController: self)
    }
    @IBAction func ShowPopUp7(_ sender: Any) {
        let popOverVC7 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp7ID") as! PopUp7ViewController
        self.addChildViewController(popOverVC7)
        popOverVC7.view.frame = self.view.frame
        self.view.addSubview(popOverVC7.view)
        popOverVC7.didMove(toParentViewController: self)
    }
    
    @IBAction func ShowPopUp8(_ sender: Any) {
        let popOverVC8 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp8ID") as! PopUp8ViewController
        self.addChildViewController(popOverVC8)
        popOverVC8.view.frame = self.view.frame
        self.view.addSubview(popOverVC8.view)
        popOverVC8.didMove(toParentViewController: self)
    }
    @IBAction func ShowPopUp9(_ sender: Any){
        let popOverVC9 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp9ID") as! PopUp9ViewController
        self.addChildViewController(popOverVC9)
        popOverVC9.view.frame = self.view.frame
        self.view.addSubview(popOverVC9.view)
        popOverVC9.didMove(toParentViewController: self)
    }
    
    @IBAction func ShowPopUp10(_ sender: Any) {
        let popOverVC10 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp10ID") as! PopUp10ViewController
        self.addChildViewController(popOverVC10)
        popOverVC10.view.frame = self.view.frame
        self.view.addSubview(popOverVC10.view)
        popOverVC10.didMove(toParentViewController: self)
    }
    
    @IBAction func ShowPopUp11(_ sender: Any) {
        let popOverVC11 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp11ID") as! PopUp11ViewController
        self.addChildViewController(popOverVC11)
        popOverVC11.view.frame = self.view.frame
        self.view.addSubview(popOverVC11.view)
        popOverVC11.didMove(toParentViewController: self)
    }
    @IBAction func ShowPopUp12(_ sender: Any) {
        let popOverVC12 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp12ID") as! PopUp12ViewController
        self.addChildViewController(popOverVC12)
        popOverVC12.view.frame = self.view.frame
        self.view.addSubview(popOverVC12.view)
        popOverVC12.didMove(toParentViewController: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

