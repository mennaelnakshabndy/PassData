//
//  SecondViewController.swift
//  PassDataTask
//
//  Created by menna mostafa on 9/7/19.
//  Copyright © 2019 mennamostafa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var info : String? = ""
    
    var delegate : dataDelegation?
    
    @IBOutlet weak var CommentTextView: UITextView!
    @IBOutlet weak var InfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        InfoLabel.text = info

        // Do any additional setup after loading the view.
    }

    @IBAction func BackPressed(_ sender: UIButton)
    {
        guard let comment = CommentTextView.text
            else{

                return
        }
       delegate?.sendData(text: comment)
       self.dismiss(animated: true, completion: nil)
     
        
        
    }
    
}
