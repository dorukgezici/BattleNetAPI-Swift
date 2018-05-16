//
//  BNWoWChallenge.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 11/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//


class BNWoWChallenge: BNGenericAPI {
    
    // MARK: CHALLENGE MODE API
    public func realmLeaderboard(realm: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/challenge/\(realm)")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func regionLeaderboard(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/challenge/region")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }

}
