import SwiftUI

struct TabBar: View {
    
    var images = [""]
    var width: CGFloat = 0
    var height: CGFloat = 0
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.backward").resizable().frame(width: 25, height: 22).padding(.leading, 6).foregroundStyle(.green).fontWeight(.semibold)
                }
                Spacer()
                ForEach(images, id: \.self) { image in
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: image).resizable().frame(width: width, height: height).padding(.horizontal, 8).foregroundStyle(.green).fontWeight(.semibold)
                    })
                }
            }
        }.padding(.horizontal).padding(.top, 19)
    }
}

