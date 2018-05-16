//
//  BNGenericAPI.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 10/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//

import Alamofire
import Foundation

typealias ResponseCallback = ([String:Any]?) -> Void

class BNGenericAPI: NSObject {
    
    private let apiRootUrl: String
    private let apiKey: String
    private let locale: String
    
    /**
     Class initializer. Using Alamofire library for HTTPS requests.
     Check https://dev.battle.net for documentation related to BattleNet APIs
     
     - parameters:
        - apiRootUrl: API server URL, e.g. "http://us.api.battle.net"
        - apikey: apikey string
        - locale: locale format, e.g. "en-US"
    */
    required init(apiRootUrl: String, apikey: String, locale: String) {
        self.apiRootUrl = apiRootUrl
        self.apiKey = apikey
        self.locale = locale
        
        super.init()
    }
    
    public func createAPIRequestURL(method: String, fields: [String:String]? = nil) -> String {
        var returnString = "\(self.apiRootUrl)\(method)?locale=\(self.locale)&apikey=\(self.apiKey)";
        if let fields = fields {
            fields.forEach { key, value in
                let field = "&\(key)=\(value)"
                returnString.append(field)
            }
        }
        print("Resource url is: \(returnString)")
        return returnString
    }
    
    public func httpAPIRequest(apiRequestURL: String, requestData: @escaping ResponseCallback) {
        Alamofire.request(apiRequestURL).validate().responseJSON { response in
            switch response.result {
            case .failure:
                print("Function \(#function), line \(#line): Request error, \(response.error!)")
            case .success:
                print("Function \(#function), line \(#line): Request success.")
                requestData(response.result.value as? [String:Any])
            }
        }
    }
    
}
