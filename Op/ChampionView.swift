import SwiftUI

struct ChampionView: View {
    @State var text: String = ""
    var body: some View {
        VStack {
            TextField("챔피언 검색", text: $text)
            Spacer()
        }
        .padding()
    }
}

struct ChampionView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionView()
    }
}
