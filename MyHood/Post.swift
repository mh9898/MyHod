//
//  Post.swift
//  MyHood
//
//  Created by MiciH on 5/14/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import Foundation

class Post {
    private var _imgPath : String
    private var _title: String
    private var _desc: String
    
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
    
    
}
