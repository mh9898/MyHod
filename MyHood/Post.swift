//
//  Post.swift
//  MyHood
//
//  Created by MiciH on 5/14/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    private var _imgPath : String!
    private var _title: String!
    private var _desc: String!
    
    var imgPath : String{
        return _imgPath
    }
    
    var title : String{
        return _title
    }
    
    var desc : String{
        return _desc
    }
    
    init(imgPath: String, title: String, desc: String){
        self._imgPath = imgPath
        self._title = title
        self._desc = desc
    }
    
    override init() {
        
    }
    
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._desc = aDecoder.decodeObjectForKey("desc") as? String
        self._imgPath = aDecoder.decodeObjectForKey("img") as? String
  
        
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._title, forKey: "title")
        aCoder.encodeObject(self._desc, forKey: "desc")
        aCoder.encodeObject(self._imgPath, forKey: "img")
    }
    
    
}
