import Foundation
import SwiftUI

struct Account: Hashable, Codable {
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

extension Account {
    static let sample = Account(
        id: "",
        accountId: "",
        puuid: "",
        name: "[       ]",
        revisionDate: 0,
        summonerLevel: 0,
        profileIconId: 0)
}
