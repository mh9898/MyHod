//
//  PostCell.swift
//  MyHood
//
//  Created by MiciH on 5/14/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var imgCell : UIImageView!
    @IBOutlet weak var titleCell : UILabel!
    @IBOutlet weak var descCell : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func confgCell(post: Post){
        titleCell.text = post.title
        descCell.text = post.desc
    }

    
}
