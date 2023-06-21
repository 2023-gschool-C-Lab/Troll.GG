//
//  ESportsView.swift
//  Op
//
//  Created by sonjiwoo on 2023/06/20.
//

import SwiftUI

class Fetcher: ObservableObject {
    @Published var text = "This is ESports HAHA"
}

struct ESportsView: View {
    @StateObject var fetcher = Fetcher()
    
    var body: some View {
        Button {
            fetcher.text += "!"
        } label: {
            Text(fetcher.text)
        }
        
    }
}

struct ESportsView_Previews: PreviewProvider {
    static var previews: some View {
        ESportsView()
    }
}
