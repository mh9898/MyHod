//
//  CircleImage.swift
//  MyHood
//
//  Created by MiciH on 5/15/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import UIKit

class CircleImage: UIImageView {
    
    
 func initialize(){
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initialize()
    }

    
}
