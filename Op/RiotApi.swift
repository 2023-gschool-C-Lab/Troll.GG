import Foundation

enum FetchError: Error {
    case invalidURL
}

@MainActor
class SummonerFetcher: ObservableObject {
    @Published var account: Account = .sample
    
    func fetchSummoner(name: String) async throws {
        guard let url = URL(string: "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/\(name)?api_key=\(Literal.apiKey)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "") else {
            throw FetchError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let account = try JSONDecoder().decode(Account.self, from: data)
        self.account = account
    }
}
