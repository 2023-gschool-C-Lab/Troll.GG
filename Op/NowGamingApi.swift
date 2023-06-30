import Foundation

enum FetError: Error {
    case invalidURL
}

@MainActor
class GamingFetcher: ObservableObject {
    @Published var gaming: Gaming = .sample
    
    func fetchGaming(name: String) async throws {
        guard let url = URL(string: "https://kr.api.riotgames.com/lol/spectator/v4/active-games/by-summoner/\(name)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "") else {
            throw FetchError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let gaming = try JSONDecoder().decode(Gaming.self, from: data)
        self.gaming = gaming
    }
}
