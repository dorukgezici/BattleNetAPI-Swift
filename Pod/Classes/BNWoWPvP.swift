//
//  BNWoWPvP.swift
//  BattleNet-API
//
//  Created by Bogdan Coticopol on 11/06/2017.
//  Copyright © 2017 Bogdan Coticopol. All rights reserved.
//

import UIKit

class BNWoWPvP: BNGenericAPI {

    enum BracketType: String {
        case _2v2 = "2v2"
        case _3v3 = "3v3"
        case _5v5 = "5v5"
        case _rbg = "rbg"
    }
    
    public func leaderboards(bracket: BracketType, response: @escaping ResponseCallback) {
        let requestURL = self.createAPIRequestURL(method: "/wow/leaderboard/\(bracket.rawValue)")
        self.httpAPIRequest(apiRequestURL: requestURL) { responseDict in
            response(responseDict)
        }
    }
}
