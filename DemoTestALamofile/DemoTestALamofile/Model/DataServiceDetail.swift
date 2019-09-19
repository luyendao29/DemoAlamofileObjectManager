//
//  DataServiceDetail.swift
//  DemoTestALamofile
//
//  Created by Boss on 9/19/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit
import AlamofireManager
import Alamofire
import ObjectMapper

class DataServiceDetail {
    static let sharedInstance: DataServiceDetail = DataServiceDetail()
    func onSignIn(request : User, callBack : @escaping (String) -> Void, failure: @escaping(String) -> Void)
    {
        var header = ["Authorization" : UIApplication.shared.gettoken()]
        
        let parameters: Parameters = [ "ServiceType": "query", "Service": "mobile_search_staff_info_service", "Provider": "default" ,"ParamSize": "1"]
        Alamofire.request(loginUrl.baseApi, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: header).responseString{ (response: DataResponse<String>) in
            print(response)
            do {
                callBack(response.result.value!)
            } catch {
                print(error)
            }
            
        }
    }
}
