//
//  DataService.swift
//  MyHood
//
//  Created by MiciH on 5/15/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    //static = make one instance of it
    static let instance = DataService()
    
    private var _loadedPost = [Post]()
    
    var loadedPost : [Post] {
        return _loadedPost
    }
    
    func savePosts(){
        //covert post array to data to store in NSUser (convert to bits and bytes)
        let postData = NSKeyedArchiver.archivedDataWithRootObject(_loadedPost)
        //saving//setting the data / as dictionery in standart user defualts
        NSUserDefaults.standardUserDefaults().setObject(postData, forKey: "posts")
    }

    
    func loadPosts(){
       //if data exist retrve data
        if let postData = NSUserDefaults.standardUserDefaults().objectForKey("posts") as? NSData{
            //unarcive it to an array object
            if let postArray = NSKeyedUnarchiver.unarchiveObjectWithData(postData) as? [Post]{
                _loadedPost = postArray
            }
            
        }
        //listen to the array and let me konw when it have objects
        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "postLoadedNotfaction", object: nil))
    }
    
    
    func addPost(post: Post){
        _loadedPost.append(post)
        savePosts()
        loadPosts()
        
    }
    
    //convert the image to data and create uniqe path
    func saveImageCreatePath(image: UIImage) -> String{
        let imageData = UIImagePNGRepresentation(image)
        //uniqe image path
        let imagePath = "image\(NSDate.timeIntervalSinceReferenceDate()).png"
        let fullPath = documentsPathForFileName(imagePath)
        //save the image
        imageData?.writeToFile(fullPath, atomically: true)
        return imagePath
        
    }
    
    func retriveImageForPath(path: String)-> UIImage?{
        let fullPath = documentsPathForFileName(path)
        let image = UIImage(named: fullPath)
        return image
    }
    
    
    
    //funcation to get path to the photos
                                //myImg.png
    func documentsPathForFileName(name: String) -> String {
        //get the path dir of the file
        let paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        let fullPath = paths[0] as NSString
        return fullPath.stringByAppendingPathComponent(name)
        
        
    }
    
}
