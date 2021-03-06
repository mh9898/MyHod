//
//  ViewController.swift
//  MyHood
//
//  Created by MiciH on 5/14/16.
//  Copyright © 2016 MichaelH. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView : UITableView!
    
//    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
     
        tableView.delegate = self
        tableView.dataSource = self
        
        DataService.instance.loadPosts()
        
//        let post1 = Post(imgPath: "", title: "post1", desc: "desc post1")
//        let post2 = Post(imgPath: "", title: "post2", desc: "desc post2")
//        let post3 = Post(imgPath: "", title: "post3", desc: "desc post3")
//        
//        posts.append(post1)
//        posts.append(post2)
//        posts.append(post3)
//        
//        tableView.reloadData() 
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "onPostLoadedNotfaction:", name: "postLoadedNotfaction", object: nil)
    }
    
    func onPostLoadedNotfaction(notif: AnyObject){
        tableView.reloadData()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.loadedPost.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        //row index number
        let post = DataService.instance.loadedPost[indexPath.row]
        //cell data
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell{
            cell.confgCell(post)
            return cell
        }
        else{
            let cell = PostCell()
            cell.confgCell(post)
            return cell
        }
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 109.0
    }


}

