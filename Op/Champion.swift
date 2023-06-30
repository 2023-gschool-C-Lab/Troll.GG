//
//  Champion.swift
//  Op
//
//  Created by 서예돈 on 2023/06/30.
//

import Foundation

struct Champion: Identifiable {
    let id = UUID()
    let name: String
    let tier: Int
    let winRate: Double
    let pickRate: Double
    let banRate: Double
}

extension Champion {
    static let topSamples = [
        Champion(name: "다리우스", tier: 1, winRate: 53.3, pickRate: 6.8, banRate: 16.7),
        Champion(name: "레넥톤", tier: 1, winRate: 51.1, pickRate: 10.3, banRate: 6.2),
        Champion(name: "잭스", tier: 1, winRate: 50.9, pickRate: 9.0, banRate: 12.7),
        Champion(name: "마오카이", tier: 1, winRate: 53.8, pickRate: 3.3, banRate: 0.7),
        Champion(name: "오른", tier: 1, winRate: 52.3, pickRate: 5.0, banRate: 0.7),
        Champion(name: "럼블", tier: 1, winRate: 52.8, pickRate: 4.0, banRate: 2.7),
    ]
}

extension Champion {
    static let JungleSamples = [
        Champion(name: "렉사르", tier: 1, winRate: 53.3, pickRate: 6.8, banRate: 16.7),
        Champion(name: "버거킹", tier: 1, winRate: 51.1, pickRate: 10.3, banRate: 6.2),
        Champion(name: "니달리", tier: 1, winRate: 50.9, pickRate: 9.0, banRate: 12.7),
        Champion(name: "그브레이즈", tier: 1, winRate: 53.8, pickRate: 3.3, banRate: 0.7),
        Champion(name: "케이서스", tier: 1, winRate: 52.3, pickRate: 5.0, banRate: 0.7),
        Champion(name: "케인", tier: 1, winRate: 52.8, pickRate: 4.0, banRate: 2.7),
    ]
}

extension Champion {
    static let MidSamples = [
        Champion(name: "렉사르", tier: 1, winRate: 53.3, pickRate: 6.8, banRate: 16.7),
        Champion(name: "버거킹", tier: 1, winRate: 51.1, pickRate: 10.3, banRate: 6.2),
        Champion(name: "니달리", tier: 1, winRate: 50.9, pickRate: 9.0, banRate: 12.7),
        Champion(name: "그브레이즈", tier: 1, winRate: 53.8, pickRate: 3.3, banRate: 0.7),
        Champion(name: "케이서스", tier: 1, winRate: 52.3, pickRate: 5.0, banRate: 0.7),
        Champion(name: "케인", tier: 1, winRate: 52.8, pickRate: 4.0, banRate: 2.7),
    ]
}

extension Champion {
    static let ADCSamples = [
        Champion(name: "렉사르", tier: 1, winRate: 53.3, pickRate: 6.8, banRate: 16.7),
        Champion(name: "버거킹", tier: 1, winRate: 51.1, pickRate: 10.3, banRate: 6.2),
        Champion(name: "니달리", tier: 1, winRate: 50.9, pickRate: 9.0, banRate: 12.7),
        Champion(name: "그브레이즈", tier: 1, winRate: 53.8, pickRate: 3.3, banRate: 0.7),
        Champion(name: "케이서스", tier: 1, winRate: 52.3, pickRate: 5.0, banRate: 0.7),
        Champion(name: "케인", tier: 1, winRate: 52.8, pickRate: 4.0, banRate: 2.7),
    ]
}

extension Champion {
    static let SupportSamples = [
        Champion(name: "렉사르", tier: 1, winRate: 53.3, pickRate: 6.8, banRate: 16.7),
        Champion(name: "버거킹", tier: 1, winRate: 51.1, pickRate: 10.3, banRate: 6.2),
        Champion(name: "니달리", tier: 1, winRate: 50.9, pickRate: 9.0, banRate: 12.7),
        Champion(name: "그브레이즈", tier: 1, winRate: 53.8, pickRate: 3.3, banRate: 0.7),
        Champion(name: "케이서스", tier: 1, winRate: 52.3, pickRate: 5.0, banRate: 0.7),
        Champion(name: "케인", tier: 1, winRate: 52.8, pickRate: 4.0, banRate: 2.7),
    ]
}
