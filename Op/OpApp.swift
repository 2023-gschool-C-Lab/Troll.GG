//
//  OpApp.swift
//  Op
//
//  Created by sonjiwoo on 2023/06/19.
//

import SwiftUI

@main
struct OpApp: App {
    @StateObject var summonerFecther = SummonerFetcher()
    @StateObject var tierFetcher = TierFetcher()
    @StateObject var matchFetcher = MatchFetcher()
    @StateObject var eachMatchFetcher = EachMatchFetcher()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(summonerFecther)
                .environmentObject(tierFetcher)
                .environmentObject(matchFetcher)
                .environmentObject(eachMatchFetcher)
        }
    }
}
