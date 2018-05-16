//
//  BNWoWDataResources.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 11/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//

import UIKit

class BNWoWDataResources: BNGenericAPI {
    
    public func battlegroups(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/data/battlegroups/")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func characterRaces(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/data/character/races")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func characterClasses(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/data/character/classes")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func characterAchievements(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/data/character/achievements")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func guildRewards(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/data/guild/rewards")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func guildPerks(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/data/guild/perks")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func itemClasses(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/data/item/classes")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func talents(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/data/talents")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func petTypes(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/data/pet/types")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }







    
}
