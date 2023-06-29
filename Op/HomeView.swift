import SwiftUI

struct HomeView: View {
    @EnvironmentObject var summonerFecther: SummonerFetcher
    @State var name: String = ""
    @State var account: Account = .sample

    var body: some View {
        VStack(spacing: 0) {
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField(
                    "소환사 검색",
                    text: $name)
                Spacer()
                Button {
                    Task {
                        do {
                            account = try await summonerFecther.fetchSummoner(name: name)
                        } catch {
                            print("ERROR: \(error)")
                        }
                    }

                    
                } label: {
                    Text("제출")
                }
            }
            .padding()
            .overlay {
                Capsule()
                    .stroke()
            }
            
            
//            TextField("", text: $text)
//                .textFieldStyle(.plain)
//                .frame(height: 70)
//                .background {
//                    RoundedRectangle(cornerRadius: 22)
//                        .stroke(.gray)
//                }
//                .overlay(
//                    HStack {
//                        Image(systemName: "magnifyingglass")
//                            .resizable()
//                            .foregroundColor(.gray)
//                            .frame(width: 30, height: 30)
//                            .border(.red)
//                            .padding(.leading, 25)
//                        Text("소환사 검색")
//                            .foregroundColor(.gray)
//                            .padding(.leading, 4)
//                        Spacer()
//                    }
//                )
            Spacer()
                .frame(height: 70)
            HStack {
                Image("profile_image") // Replace with your own image name
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 100)) // Adjust the corner radius as needed
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 2))
                    .padding(.leading, 4)// Adjust the corner radius as needed
               
                VStack(alignment: .leading, spacing: 4) {
                    Text(account.name)
                        .font(.title)
                        .foregroundColor(.black)
                    Text("Challanger  | 520LP | Lv.\(account.summonerLevel)")
                }
                .padding(.leading, 16)
                .padding(.bottom, 50)
                
                Spacer()
            }
            
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 370, height: 140)
                    .foregroundColor(Color.gray.opacity(0.15))
                    .padding(.top, 20)
                
                    .overlay(
                        
                        VStack {
                            HStack {
                                    Text("9승 11패")
                                        .font(.system(size: 20, weight: .bold))
                                    Text("승률")
                                    .font(.system(size: 20))
                                    Text("45%")
                                    .font(.system(size: 20))
                                        .foregroundColor(.red)
                                
                                    Text("KDA")
                                    Text("1:5:1")
                                        .font(.system(size: 20, weight: .bold))
                                }
                                .padding(.top, 10)
                            
                            HStack(spacing: 25) {
                                HStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 50, height: 50)
                                        .padding(.top, 10)
                                    Text("66%")
                                      
                                        .font(.system(size: 16, weight: .bold))
                                        .padding(.top, 10)
                                }
                                
                                HStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 50, height: 50)
                                        .padding(.top, 10)
                                    Text("77%")
                                      
                                        .font(.system(size: 16, weight: .bold))
                                        .padding(.top, 10)
                                }
                                
                                HStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 50, height: 50)
                                        .padding(.top, 10)
                                    Text("0%")
                                    
                                        .padding(.top, 10)
                                        .font(.system(size: 16, weight: .bold))
                                }
                            }
                            
                        }
                    )
            }
            
            Button(action: {
                                // Add action for "자세히 보기" button
                            }) {
                                Text("자세히 보기")
                                    .font(.system(size: 16))
                                    .foregroundColor(.blue)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 20)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.2)))
                            }
       
            Spacer()
        }
        
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(SummonerFetcher())
    }
}
