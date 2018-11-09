//
//  Base.swift
//  Widget
//
//  Created by Renoy Rahman Chowdhury on 09/11/2018.
//  Copyright © 2018 Renoy Rahman Chowdhury. All rights reserved.
//

import Foundation
import ObjectMapper

class Base: Mappable {
    var status: String?
    var counters: [Counter]?
    
    required init?(map: Map) {
    }
    
    
    func mapping(map: Map) {
        status      <-  map["status"]
        counters    <-  map["counters"]
    }
}

class Counter: Base {
    var groupName: String?
    var groupCounters: Int?
    var bugCount: Int?
    
    override func mapping(map: Map) {
        groupName       <-  map["groupName"]
        groupCounters   <-  map["groupCounters"]
        bugCount        <-  map["bugCount"]
    }
    
}
