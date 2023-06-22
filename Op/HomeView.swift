import SwiftUI

struct HomeView: View {
    @State var text: String = ""
    
    var body: some View {
        VStack {
            TextField("소환사 검색!", text: $text)
            Spacer()
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
