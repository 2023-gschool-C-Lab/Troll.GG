import Foundation
import SwiftUI

struct Match: Hashable, Codable {
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

extension Match {
    static let sample = Match(
        id: "",
        accountId: "",
        puuid: "",
        name: "[       ]",
        revisionDate: 0,
        summonerLevel: 0,
        profileIconId: 0)
}
