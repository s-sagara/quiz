//
//  InputViewController.swift
//  quiz
//
//  Created by nttr on 2017/07/25.
//  Copyright © 2017年 nttr. All rights reserved.
//

import UIKit

class InputViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var input_textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        input_textfield.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if Int(textField.text!)! >= 100 || Int(textField.text!)! <= 70{
        
            let alert = UIAlertController(title: "error", message: "自分で考えて", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: {(action) in
                alert.dismiss(animated: true, completion: nil)
            })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        
        }else{
        
            current_lefts = Int(textField.text!)!
            
        }
        
        textField.resignFirstResponder()
        self.dismiss(animated: true, completion: nil)
        return true
    }
  
    @IBAction func back(){
    
        self.dismiss(animated: true, completion: nil)
    
    }

}
