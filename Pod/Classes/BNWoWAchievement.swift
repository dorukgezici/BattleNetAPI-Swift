//
//  BNWoWAchievement.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 10/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//



class BNWoWAchievement: BNGenericAPI {
    
// MARK: ACHIEVEMENT API
    public func achievement(id: Int, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/achievement/\(id)")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
}
