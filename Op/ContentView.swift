import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Label("홈", systemImage:  "house.fill")
                    }
                ChampionView()
                    .tabItem {
                        Label("챔피언", systemImage:  "brain.head.profile")
                    }
                ESportsView()
                    .tabItem {
                        Label("이스포츠", systemImage:  "trophy.fill")
                    }
               CommunityView()
                    .tabItem {
                        Label("커뮤니티", systemImage:  "command.square")
                    }
               OptionView()
                    .tabItem {
                        Label("설정", systemImage: "gearshape.fill")
                    }
            }
            .navigationTitle("Troll.GG")
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

