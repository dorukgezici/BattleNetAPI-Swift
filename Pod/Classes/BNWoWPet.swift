//
//  BNWoWPet.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 11/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//

import UIKit

class BNWoWPet: BNGenericAPI {
    
    public func masterList(response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/pet")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func abilities(abilityId: Int, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/pet/ability/\(abilityId)")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func species(speciesId: Int, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/pet/species/\(speciesId)")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func stats(speciesId: Int, level: Int = 25, breedId: Int = 5, qualityId: Int = 4, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/pet/stats/\(speciesId)",
            fields: ["level":String(level), "breedId":String(breedId), "qualityId":String(qualityId)])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
}
