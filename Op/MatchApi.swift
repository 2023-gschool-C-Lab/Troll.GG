import Foundation

enum FeError: Error {
    case invalidURL
}

@MainActor
class MatchFetcher: ObservableObject {
    @Published var match: [String] = []
    
    func fetchMatch(puuid: String) async throws {
        guard let url = URL(string: "https://asia.api.riotgames.com/lol/match/v5/matches/by-puuid/\(puuid)/ids?count=5&api_key=\(Literal.apiKey)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "") else {
            throw FeError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let match = try JSONDecoder().decode([String].self, from: data)
        self.match = match
    }
}

