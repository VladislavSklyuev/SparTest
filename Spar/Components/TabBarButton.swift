import SwiftUI

struct TabBarButton: View {
    
    var buttonText: String
    var imageName: String
    var isActive: Bool
    
    var body: some View {
        
            
                if isActive {
                    VStack(alignment: .center, spacing: 4) {
                        Image(systemName: imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28, height: 28)
                            .foregroundStyle(.green)
                        Text(buttonText).foregroundStyle(.green).font(.system(size: 12)).fontWeight(.medium)
                    }.padding(.horizontal)
                    
                } else {
                    VStack(alignment: .center, spacing: 4) {
                        Image(systemName: imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28, height: 28)
                            .foregroundStyle(.gray)
                        Text(buttonText).foregroundStyle(.gray).font(.system(size: 12)).fontWeight(.medium)
                    }.padding(.horizontal)
                }
    }
}
