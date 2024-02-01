import SwiftUI

struct ShortProductDescription: View {
    var productName = ""
    
    var body: some View {
        HStack() {
            Text(productName).frame(width: 230).font(.system(size: 27)).fontWeight(.heavy)
            Spacer()
        }
    }
}
