//
//  BNWoWItem.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 11/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//

import UIKit

class BNWoWItem: BNGenericAPI {

    public func item(itemId: Int, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/item/\(itemId)")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func itemSet(setId: Int, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/item/set/\(setId)")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
}
