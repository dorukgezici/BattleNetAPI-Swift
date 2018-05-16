//
//  BNWoWBoss.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 11/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//


class BNWoWBoss: BNGenericAPI {
    
    // MARK: BOSS API
    public func masterList(response: @escaping ResponseCallback ) {
        let requestURL = self.createAPIRequestURL(method: "/wow/boss")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func boss(bossId: Int, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/boss/\(bossId)")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
}
