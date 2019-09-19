//
//  aplication.swift
//  DemoTestALamofile
//
//  Created by Boss on 9/17/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

extension UIApplication {
    
//    save data
    func savetoken(value: String) {
        UserDefaults.standard.set(value, forKey: "token")
    }
    
//    get token
    
    func gettoken() -> String {
        if let token = UserDefaults.standard.string(forKey: "token") {
           return token
        }
        return ""
    }
}
