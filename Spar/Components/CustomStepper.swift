import SwiftUI

struct CustomStepper: View {
    var body: some View {
        Rectangle().frame(width: 180, height: 50).clipShape(Capsule()).foregroundStyle(.green).overlay {
            ZStack {
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "minus").foregroundStyle(.white).bold()
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "plus").foregroundStyle(.white).bold()
                    }
                }.padding(.horizontal)
                VStack(spacing: 2) {
                    Text("1 шт").fontWeight(.medium).foregroundStyle(.white)
                    Text("120,0₽").font(.system(size: 12)).foregroundStyle(.white)
                }
            }
        }
    }
}
