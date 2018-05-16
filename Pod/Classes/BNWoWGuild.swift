//
//  BNWoWGuild.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 11/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//


class BNWoWGuild: BNGenericAPI {

    // MARK: GUILD PROFILE API
    public func guildProfile(realm: String, guildName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/guild/\(realm)/\(guildName)")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func members(realm: String, guildName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/guild/\(realm)/\(guildName)", fields: ["fields":"members"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func achievements(realm: String, guildName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/guild/\(realm)/\(guildName)", fields: ["fields":"achievements"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func news(realm: String, guildName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/guild/\(realm)/\(guildName)", fields: ["fields":"news"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func challenge(realm: String, guildName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/guild/\(realm)/\(guildName)", fields: ["fields":"challenge"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }

}
