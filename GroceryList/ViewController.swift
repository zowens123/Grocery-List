//
//  ViewController.swift
//  GroceryList
//
//  Created by Zach Owens on 1/23/19.
//  Copyright © 2019 Zach Owens. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var groceryItem: UITextField!
    @IBOutlet weak var groceryList: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        groceryList.delegate = self
    }

    @IBAction func addItem(_ sender: UIButton) {
        
        if let item = groceryItem.text, item != "" {
            groceryList.text.append("• \(item)\n")
            groceryItem.text = ""
            groceryItem.resignFirstResponder()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        groceryItem.resignFirstResponder()
    }
    
    func textViewShouldBeginEditing(_ textField: UITextView) -> Bool {
        groceryItem.resignFirstResponder()
        return false
    }
    
}

