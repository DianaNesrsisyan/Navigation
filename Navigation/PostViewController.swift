//
//  PostViewController.swift
//  Navigation
//
//  Created by мас on 23.05.2021.
//

import UIKit

class PostViewController: UIViewController  {
    var post: Post?

override func viewDidLoad(){
    super.viewDidLoad()
    title = post?.title
}
    
}
