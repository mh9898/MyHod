//
//  AddPostVC.swift
//  MyHood
//
//  Created by MiciH on 5/15/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    @IBOutlet weak var mainImage: CircleImage!
    
    @IBOutlet weak var enterTitle: UITextField!
    
    @IBOutlet weak var enterDescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func AddImageAction(sender: UIButton) {
        
        sender.setTitle("", forState: .Normal)
    }
    
    @IBAction func postAction(sender: AnyObject) {
        
        
        
    }
    
    
    @IBAction func cancelAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
