//
//  ViewController.swift
//  Widget
//
//  Created by Renoy Rahman Chowdhury on 09/11/2018.
//  Copyright © 2018 Renoy Rahman Chowdhury. All rights reserved.
//

import UIKit
import SwiftyJSON
import ObjectMapper

class ViewController: UIViewController {
    var cntr : Counter?
    var sts : Base?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadJsonFrom(fileName: "mockJSON")
        
        
    }
    
    func loadJsonFrom(fileName: String) {
        
        let path = Bundle.main.path(forResource: fileName, ofType: "mock")
        let jsonData = try! Data(contentsOf: URL(fileURLWithPath: path!))
        let jsonResult: NSDictionary = try! JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) as! NSDictionary
        let mockResponse = Mapper<Base>().map(JSON: jsonResult as! [String : Any])
        print(mockResponse?.status)
    }
}

