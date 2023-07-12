import Foundation

enum FetcError: Error {
    case invalidURL
}

@MainActor
class TierFetcher: ObservableObject {
    @Published var tier: [Tier] = Tier.sample

    func fetchTier(accountId: String) async throws {
        guard let url = URL(string: "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/\(accountId)?api_key=\(Literal.apiKey)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "") else {
            throw FetchError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let tier = try JSONDecoder().decode([Tier].self, from: data)
        self.tier = tier
    }
    
    func getSoloRankTier() -> Tier {
        for t in self.tier {
            if t.queueType == "RANKED_SOLO_5x5" {
                return t
            }
        }
        
        return Tier.sample[0]
    }
}
