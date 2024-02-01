import SwiftUI

struct ReviewRectangle: View {
    var body: some View {
        Rectangle()
            .fill(.white)
            .frame(width: 230, height: 140).cornerRadius(12).padding()
            .shadow(color: Color.gray.opacity(0.2), radius: 5)
            .overlay {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Александр В.")
                    Text("7 мая 2021").font(.subheadline).foregroundStyle(.gray)
                    RatingPicker()
                    Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!").font(.system(size: 14))
                }
            }
    }
}
