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
        
        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "postLoadedNotfaction", object: nil))
    }
    
    
    func addPost(post: Post){
        _loadedPost.append(post)
        savePosts()
        loadPosts()
        
    }
    
    func saveImageCreatePath(image: UIImage){
        
    }
    
    func retriveImageForPath(path: String){
        
    }
    
}
