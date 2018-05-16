//
//  BNWoWCharacter.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 11/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//


class BNWoWCharacter: BNGenericAPI {
    
    // MARK: CHARACTER PROFILE API
    public func characterProfile(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func achievements(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"achievement"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func appearance(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"appearance"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func feed(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"feed"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func guild(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"guild"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func hunterPets(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"hunterPets"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func items(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"items"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func mounts(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"mounts"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func pets(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["pets":"pets"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func petSlots(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"petSlots"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func professions(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"professions"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func progression(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"progression"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func pvp(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"pvp"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func quests(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"quests"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func reputation(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"reputation"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func stats(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"stats"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func talents(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"talents"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func titles(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"titles"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
    
    public func audit(realm: String, characterName: String, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/character/\(realm)/\(characterName)", fields: ["fields":"audit"])
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }

}
