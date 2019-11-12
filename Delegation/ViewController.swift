//
//  ViewController.swift
//  Delegation
//
//  Created by Mohamed on 11/13/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    @IBAction func btn_goto(_ sender: UIButton) {
        
        let VC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        VC.myDelegation = self
        
        present(VC, animated: true, completion: nil)
        
    }
}

extension ViewController : DelegationData{
    
    func sendData(profileImage: UIImage, textMessage: String) {
        
        self.profileImage.image = profileImage
        self.textLabel.text = textMessage
    }
    
    
    
    
}

