//
//  ViewControllerintro.swift
//  Howdy
//
//  Created by Maher on 4/29/15.
//

import UIKit

class ViewControllerintro: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var txt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txt.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true;
    }
    func checkdefault(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let defaults = NSUserDefaults.standardUserDefaults()

        
        if (defaults.boolForKey("HasBeenLaunched")) {
            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Near Me")
            
            self.presentViewController(viewController, animated: false, completion: nil)
        } else {
            
            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Setup") 

            
            self.presentViewController(viewController, animated: false, completion: nil)

        }
        
        
        return true
    }


}
