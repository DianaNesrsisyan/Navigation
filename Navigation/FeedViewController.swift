//
//  FeedViewController.swift
//  Navigation
//
//  Created by мас on 23.05.2021.
//

import UIKit
class FeedViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    let new : Post = Post(title: "new")
    
    override func prepare (for segue:UIStoryboardSegue, sender :Any?){
    guard segue.identifier == "settings", let destination =
            segue.destination as? PostViewController  else {
            return
        }
    destination.post = new
}
}






