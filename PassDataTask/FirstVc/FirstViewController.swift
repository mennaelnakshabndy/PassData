//
//  FirstViewController.swift
//  PassDataTask
//
//  Created by menna mostafa on 9/7/19.
//  Copyright © 2019 mennamostafa. All rights reserved.
//


import UIKit


protocol dataDelegation {
    func sendData(text :String)
}

class FirstViewController: UIViewController , dataDelegation{
   
    func sendData(text: String) {
        BackInfoLabel.text = text
    }

    var firstClass = SecondViewController()
    
    @IBOutlet weak var NameTF: UITextField!
    @IBOutlet weak var AgeTF: UITextField!
    @IBOutlet weak var AddressTF: UITextField!
    @IBOutlet weak var BackInfoLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstClass.delegate = self
        
        

        // Do any additional setup after loading the view.
    }

    @IBAction func NextPressed(_ sender: UIButton) {

        guard  let name = NameTF.text , let age = AgeTF.text , let address = AddressTF.text
        else {
            return
        }
        
        var infoTxt = "your name is \(name) and your age is \(age) and your address is \(address)"

        let vc = SecondViewController()
        vc.info = infoTxt
        present(vc, animated: true, completion: nil)
        
        
        
    }
    
}
