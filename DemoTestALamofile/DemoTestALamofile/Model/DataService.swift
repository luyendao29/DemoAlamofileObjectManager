//
//  DataService.swift
//  DemoTestALamofile
//
//  Created by Boss on 9/17/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit
import AlamofireManager
import Alamofire
import CommonCrypto

class DataServices {
    
static let sharedInstance: DataServices = DataServices()
    
    func onSignIn(request : User, callBack : @escaping (String) -> Void, failure: @escaping(String) -> Void)
    {
       
        let parameters: Parameters = [ "ServiceType": "value", "Service": "login_service_mobile", "Provider": "default" ,"ParamSize": "3" , "P1": request.user!, "P2": request.password!, "P3": request.deviceId!]
        
        //print(parameters)
        Alamofire.request(loginUrl.baseApi, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: [:]).responseString{ (response: DataResponse<String>) in
            print(response)
            do {
                callBack(response.result.value!)
                
            } catch {
                print(error)
            }
        
        }
    }
    
}
// step 2
extension String {
    var md5Value: String {
        let length = Int(CC_MD5_DIGEST_LENGTH)
        var digest = [UInt8](repeating: 0, count: length)
        
        if let d = self.data(using: .utf8) {
            _ = d.withUnsafeBytes { (body: UnsafePointer<UInt8>) -> String in
                CC_MD5(body, CC_LONG(d.count), &digest)
                
                return ""
            }
        }
        
        return (0 ..< length).reduce("") {
            $0 + String(format: "%02x", digest[$1])
        }
    }
}

