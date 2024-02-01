import SwiftUI

struct Reviews: View {
    
    var body: some View {
        
        HStack {
            Text("Отзывы").font(.system(size: 23)).bold()
            Spacer()
            Text("Все 152").font(.system(size: 16)).foregroundStyle(.green).fontWeight(.heavy)
        }
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
            ForEach(0..<3) { _ in
                    ReviewRectangle()
                    Spacer()
                }
            }
        }
        Button(action: {}) {
            Text("Оставить отзыв").foregroundStyle(.green).bold()
                .frame(maxWidth: .infinity)
                .frame(height: 40)
                .overlay (
                    RoundedRectangle(cornerRadius: 16).stroke(.green, lineWidth: 2)
                )
        }
    }
}
