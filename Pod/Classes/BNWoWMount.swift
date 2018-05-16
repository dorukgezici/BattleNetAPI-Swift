//
//  BNWoWMount.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 11/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//

import UIKit

class BNWoWMount: BNGenericAPI {

    public func masterList(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/mount")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
}
