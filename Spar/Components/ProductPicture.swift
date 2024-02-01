import SwiftUI

struct ProductPicture: View {
    var image: String
    
    var body: some View {
        
            Image(image).resizable().aspectRatio(contentMode: .fit).overlay {
                Text("Цена по карте").frame(width: 135, height: 35).background(.green).cornerRadius(6).foregroundStyle(.white)
                    .offset(x: -106, y: -173)
        }
    }
}
