import Foundation

enum FError: Error {
    case invalidURL
}

@MainActor
class EachMatchFetcher: ObservableObject {
    @Published var account: Account = .sample
    
    func fetchEachMatch(matchId: String) async throws {
        guard let url = URL(string: "https://asia.api.riotgames.com/lol/match/v5/matches/\(matchId)?api_key=\(Literal.apiKey)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "") else {
            throw FetchError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let account = try JSONDecoder().decode(Account.self, from: data)
        self.account = account
    }
}

