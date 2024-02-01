import SwiftUI

struct Country: View {
    var image = ""
    var imageDescription = ""
    
    var body: some View {
        HStack {
            Image(image).resizable().scaledToFit().clipShape(Circle())
            .frame(width: 35, height: 35)
            Text(imageDescription)
            Spacer()
        }.padding(.vertical)
    }
}
