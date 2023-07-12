import Foundation
import SwiftUI

struct Tier: Hashable, Codable {
    var leagueId: String
    var summonerId: String
    var summonerName: String
    var queueType: String
    var tier: String
    var rank: String
    var leaguePoints: Int
    var wins: Int
    var losses: Int
    
//    private var profileIconId: Int
//    var image: Image {
//        Image(profileIconId)
//    }
}

extension Tier {
    static let sample = [
    
    Tier (
        leagueId: "",
        summonerId: "",
        summonerName: "",
        queueType: "",
        tier: "",
        rank: "UNRANKED",
        leaguePoints: 0,
        wins: 0,
        losses: 0),
//        profileIconId: 0),
    Tier (
        leagueId: "",
        summonerId: "",
        summonerName: "",
        queueType: "",
        tier: "UNRANKED",
        rank: "",
        leaguePoints: 0,
        wins: 0,
        losses: 0),
//        profileIconId: 0),
    
    ]
}

