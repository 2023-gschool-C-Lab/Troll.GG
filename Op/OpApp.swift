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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(summonerFecther)
                .environmentObject(tierFetcher)
        }
    }
}
