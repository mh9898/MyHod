//
//  AddPostVC.swift
//  MyHood
//
//  Created by MiciH on 5/15/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var mainImage: CircleImage!
    
    @IBOutlet weak var enterTitle: UITextField!
    
    @IBOutlet weak var enterDescription: UITextField!
    
    var imagePicker : UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        mainImage.image = image
    }

    @IBAction func AddImageAction(sender: UIButton) {
        
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func postAction(sender: AnyObject) {
        
        
        
    }
    
    
    @IBAction func cancelAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
