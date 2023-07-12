import SwiftUI

struct ContentView: View {
    @State var selectedTag = 0

    var body: some View {
        
        NavigationView {
            TabView(selection: $selectedTag) {
                HomeView()
                    .tabItem {
                        Label("홈", systemImage:  "house.fill")
                    }
                    .tag(0)
                ChampionView()
                    .tabItem {
                        Label("챔피언", systemImage:  "brain.head.profile")
                    }
                    .tag(1)
                ESportsView()
                    .tabItem {
                        Label("이스포츠", systemImage:  "trophy.fill")
                    }
                    .tag(2)
                CommunityView()
                    .tabItem {
                        Label("커뮤니티", systemImage:  "command.square")
                    }
                    .tag(3)
                OptionView()
                    .tabItem {
                        Label("설정", systemImage: "gearshape.fill")
                    }
                    .tag(4)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    if selectedTag == 0 {
                        Text("Troll.GG")
                            .font(.largeTitle)
                    } else if selectedTag == 1 {
                        Text("챔피언 분석")
                            .font(.largeTitle)
                    } else if selectedTag == 2 {
                        Text("이스포츠")
                            .font(.largeTitle)
                    } else if selectedTag == 3 {
                        Text("커뮤니티")
                            .font(.largeTitle)
                    } else if selectedTag == 4 {
                        Text("설정")
                            .font(.largeTitle)
                        
                        
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

