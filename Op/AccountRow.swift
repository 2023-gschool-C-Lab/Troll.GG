import SwiftUI

struct AccountRow: View {
    var account: Account

    var body: some View {
        HStack {
            
            Text(account.name)

            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        AccountRow(account: .sample)
    }
}
