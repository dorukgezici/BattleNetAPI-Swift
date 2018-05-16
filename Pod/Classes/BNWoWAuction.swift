//
//  BNWoWAuction.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 11/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//

class BNWoWAuction: BNGenericAPI {
    
    // MARK: AUCTION API
    public func auctionDataStatus(realm: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/auction/data/\(realm)")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
}
