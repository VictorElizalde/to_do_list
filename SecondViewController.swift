//
//  SecondViewController.swift
//  To Do List
//
//  Created by Victor Elizalde on 1/13/17.
//  Copyright © 2017 Victor Elizalde. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var itemTF: UITextField!
    @IBAction func addItem(_ sender: UIButton) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items: NSMutableArray
        
        if let tempItems = itemsObject as? NSMutableArray {
            
            items = tempItems
            items.addObjects(from: [itemTF.text!])
        
        } else {
            
            items = [itemTF.text!]
            
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        itemTF.text = ""
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

