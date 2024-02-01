import SwiftUI

struct Price: View {
    var body: some View {
        VStack {
            HStack {
                Text("55.9").font(.system(size: 38)).fontWeight(.heavy)
                VStack {
                    Text("₽").offset(y: 1).font(.system(size: 12)).fontWeight(.bold)
                    Text("/").offset(x: -6,y: -15).rotationEffect(.degrees(37))
                    Text("кг").font(.system(size: 11)).fontWeight(.bold).offset(x: 4,y: -23)
                }.offset(x: -6,y: 10).opacity(0.7)
            }
            Text("199,0").offset(x: -30, y: -8).foregroundStyle(.gray).fontWeight(.medium).strikethrough()
        }
    }
}
