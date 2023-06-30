import SwiftUI

struct ChampionView: View {
    @State var text: String = ""
    @State var favoriteChampions: [String] = ["Master Yi", "Yasuo", "Yone"]
    @State var selectedChampion: String = ""
    @State var selectedTag = 0
    
    let topChampions = Champion.topSamples
//    let topChampions: [String] = [
//        "Darius", "Fiora", "Garen", "Jax", // 탑 챔피언 목록...
//        // 나머지 탑 챔피언들
//    ]
    
    let jungleChampions = Champion.JungleSamples
        //"Lee Sin", "Elise", "Nidalee", "Graves", // 정글 챔피언 목록...
        // 나머지 정글 챔피언들
    
    
    let midChampions = Champion.MidSamples
    //: [String] = [
//        "Zed", "Yasuo", "LeBlanc", "Ahri", // 미드 챔피언 목록...
//        // 나머지 미드 챔피언들
//    ]
//
    let adcChampions = Champion.ADCSamples
    //String] = [
//        "Ezreal", "Jhin", "Kai'Sa", "Caitlyn", // 원딜 챔피언 목록...
//        // 나머지 원딜 챔피언들
//    ]
    
    let supportChampions = Champion.SupportSamples
//    : [String] = [
//        "Thresh", "Lulu", "Nautilus", "Janna", // 서폿 챔피언 목록...
//        // 나머지 서폿 챔피언들
//    ]
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    TextField("", text: $text)
                        .textFieldStyle(.plain)
                        .frame(height: 70)
                        .background {
                            RoundedRectangle(cornerRadius: 22)
                                .stroke(.gray)
                        }
                        .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .frame(width: 20, height: 20)
                                    .padding(.leading, 25)
                                Text("챔피언 검색")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 4)
                                Spacer()
                            }
                        )
                }
                .padding()
                
                Text("즐겨찾기한 챔피언")
                    .font(.title)
                    .padding(.top, 20)
                    .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(favoriteChampions, id: \.self) { champion in
                            Button {
                                selectedChampion = champion
                            } label: {
                                Text(champion)
                                    .font(.headline)
                                    .foregroundColor(selectedChampion == champion ? .blue : .black)
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.gray.opacity(0.15))
                                    )
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                
                Divider()
                
                VStack {
                    HStack {
                        Button {
                            selectedTag = 0
                        } label: {
                            Text("탑")
                                
                                .padding(.top, 20)
                                .padding(.horizontal)
                        }
                        Button {
                            selectedTag = 1
                        } label: {
                            Text("정글")
                              
                                .padding(.top, 20)
                                .padding(.horizontal)
                        }
                        
                        Button {
                            selectedTag = 2
                        } label: {
                            Text("미드")
                                
                                .padding(.top, 20)
                                .padding(.horizontal)
                        }
                        Button {
                            selectedTag = 3
                        } label: {
                            Text("원딜")
                               
                                .padding(.top, 20)
                                .padding(.horizontal)
                        }
                        Button {
                            selectedTag = 4
                        } label: {
                            Text("서폿")
                                
                                .padding(.top, 20)
                                .padding(.horizontal)
                        }
                    }
                    
                    TabView(selection: $selectedTag) {
                        VStack {
                            ForEach(topChampions) { champion in
                                HStack {
                                    Text(champion.name)
                                    Text("\(champion.tier)")
                                    Text("\(champion.winRate)")
                                    Text("\(champion.pickRate)")
                                    Text("\(champion.banRate)")
                                    
                                    Spacer()
                                    
                                }
                            }
                        }
                        
                        
                        
                        TabView(selection: $selectedTag) {
                            VStack {
                                ForEach(jungleChampions) { champion in
                                    HStack {
                                        Text(champion.name)
                                        Text("\(champion.tier)")
                                        Text("\(champion.winRate)")
                                        Text("\(champion.pickRate)")
                                        Text("\(champion.banRate)")
                                        
                                        Spacer()
                                        
                                    }
                                }
                            
                                
                            }
                        }
                        
                        .tag(1)
                        .foregroundColor(.black)
                    }
                    .frame(height: 400)
                    
                    //                    ScrollView {
                    //                        VStack(spacing: 16) {
                    //                            ForEach(topChampions, id: \.self) { champion in
                    //                                Button {
                    //                                    selectedChampion = champion
                    //                                } label: {
                    //                                    Text(champion)
                    //                                        .font(.headline)
                    //                                        .foregroundColor(selectedChampion == champion ? .blue : .black)
                    //                                        .padding()
                    //                                        .background(
                    //                                            RoundedRectangle(cornerRadius: 10)
                    //                                                .fill(Color.gray.opacity(0.15))
                    //                                        )
                    //                                }
                    //                            }
                    //                        }
                    //                        .padding(.horizontal)
                    //                    }
                    
                    Divider()
                    
                    // 정글, 미드, 원딜, 서폿 섹션들 추가...
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct ChampionView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionView()
    }
}
