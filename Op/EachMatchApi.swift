import Foundation

enum Ferror: Error {
    case invalidURL
}

@MainActor
class EachMatchFetcher: ObservableObject {
    @Published var eachMatch: [EachMatch] = [.sample]
    
    func fetchEachMatch(matchId: String) async throws {
        guard let url = URL(string: "https://asia.api.riotgames.com/lol/match/v5/matches/\(matchId)?api_key=\(Literal.apiKey)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "") else {
            throw FetchError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let eachMatch = try JSONDecoder().decode(EachMatch.self, from: data)
        self.eachMatch.append(eachMatch)
    }
}

