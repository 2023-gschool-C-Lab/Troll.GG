import SwiftUI

struct HomeView: View {
    @State var text: String = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                
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
                                .resizable()
                                .foregroundColor(.gray)
                                .frame(width: 30, height: 30)
                                .padding(.leading, 25)
                            Text("소환사 검색")
                                .foregroundColor(.gray)
                                .padding(.leading, 4)
                            Spacer()
                        }
                    )
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
                        Text("GM 마이")
                            .font(.title)
                            .foregroundColor(.black)
                        Text("Gold4  | 0LP")
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
                
                Spacer()
                
                    .frame(height: 8)
                
                Button {
                    print("자세히 보기 버튼 눌림")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(.blue)
                            .frame(height: 70)
                            .frame(width: 370)
                        Text("자세히 보기")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }
                    
                }
                Spacer().frame(height: 100)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("즐겨찾기한 소환사")
                            .font(.system(size: 22, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .offset(x: -4)
                    }
                }
                
                ScrollView(.horizontal) {
                    HStack(spacing: 16) { // 각 항목 사이의 간격 조정 가능
                        ForEach(0..<10) { index in // 필요한 만큼의 항목을 추가합니다
                            Text("즐겨찾기한 소환사 \(index + 1)")
                                .font(.system(size: 18, weight: .bold))
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal, 16)
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("패치 노트")
                            .font(.system(size: 22, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .offset(x: -4)
                    }
                }
                
                
                
                
                
                
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

