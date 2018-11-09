//
//  TodayViewController.swift
//  widTest
//
//  Created by Renoy Rahman Chowdhury on 09/11/2018.
//  Copyright © 2018 Renoy Rahman Chowdhury. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        let path = Bundle.main.path(forResource: "mockJSON", ofType: "mock")
        let jsonData = try! Data(contentsOf: URL(fileURLWithPath: path!))
        let jsonResult: NSDictionary = try! JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) as! NSDictionary
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
