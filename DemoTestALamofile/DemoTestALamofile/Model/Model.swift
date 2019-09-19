//
//  Model.swift
//  DemoTestALamofile
//
//  Created by Boss on 9/17/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit
import ObjectMapper

struct User: Mappable {
    init?(map: Map) {
    }
    
    
    var user: String?
    var password: String?
    var deviceId: String?
    
    init(user: String, password: String, deviceId: String) {
        self.user = user
        self.password = password
        self.deviceId = deviceId
    }
    mutating func mapping(map: Map) {
       self.user <- map["p1"]
        self.password <- map["p2"]
        self.deviceId <- map["p3"]
    }
}
