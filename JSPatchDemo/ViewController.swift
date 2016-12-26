//
//  ViewController.swift
//  JSPatchDemo
//
//  Created by Andrew on 2016/11/8.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import UIKit

let screen_width = UIScreen.main.bounds.width
let screen_height = UIScreen.main.bounds.height

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
        
        let test = TestObject()
        test.testLog()
        
        self.testLog()
        
        
        let rect  = CGRect(x: 0, y: 0, width: screen_width, height: screen_height)
        tableView = UITableView(frame: rect)
        tableView.delegate = self
        tableView.dataSource = self
        
        self.view.addSubview(tableView)
    }

  
    func testLog() -> Void {
        print("ViewController orgi testLog ")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var  cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil{
           cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        }
        
        cell?.textLabel?.text = "cell:\(indexPath.item)"
        
        
        return cell!
    }


}

