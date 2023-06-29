import Foundation

enum FetchError: Error {
    case invalidURL
}

class SummonerFetcher: ObservableObject {
    @Published var account: Account = .sample
    
    func fetchSummoner(name: String) async throws -> Account {
        guard let url = URL(string: "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/\(name)?api_key=RGAPI-5ce329e7-113f-4cdb-9086-5a3bf98f1597".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "") else {
            throw FetchError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let account = try JSONDecoder().decode(Account.self, from: data)
        return account
    }
}
