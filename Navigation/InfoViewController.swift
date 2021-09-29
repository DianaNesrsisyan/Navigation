//
//  InfoViewController.swift
//  Navigation
//
//  Created by мас on 30.05.2021.
//

import UIKit
class InfoViewController : UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
   
    
    @IBAction func tab(_ sender: Any) {
        let vc = InfoViewController()
        vc.view.backgroundColor = .yellow
            navigationController?.pushViewController(vc, animated: true)
    
    
    
        
        let new = UIAlertController(title: "ВНИМАНИЕ!", message: "ТУТ НАДПИСЬ", preferredStyle: .alert)
        
        let wellAction = UIAlertAction(title: "ХОРОШО", style: .cancel) {_ in
            print ("хорошо")
        }
        let badAction = UIAlertAction(title: "ПЛОХО", style: .default) {_ in
            print ("плохо")
        }
            
        new.addAction(wellAction)
        new.addAction(badAction)
        
        present(new, animated: true, completion: nil)
        
    }

}
   


