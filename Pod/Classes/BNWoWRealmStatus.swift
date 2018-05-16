//
//  BNWoWRealmStatus.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 11/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//

import UIKit

class BNWoWRealmStatus: BNGenericAPI {

    public func realmStatus(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/realm/status")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
}
