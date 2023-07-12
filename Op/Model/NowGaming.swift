import Foundation
import SwiftUI

struct Gaming: Hashable, Codable {
    var id: String
    var accountId: String
    var puuid: String
    var name: String
    var revisionDate: Int
    var summonerLevel: Int
    
    private var profileIconId: Int
//    var image: Image {
//        Image(profileIconId)
//    }
}

extension Gaming {
    static let sample = Gaming(
        id: "",
        accountId: "",
        puuid: "",
        name: "[       ]",
        revisionDate: 0,
        summonerLevel: 0,
        profileIconId: 0)
}

