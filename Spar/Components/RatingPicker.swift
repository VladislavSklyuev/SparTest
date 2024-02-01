import SwiftUI

struct RatingPicker: View {
    
    @State private var rating = 3
    
    var body: some View {
        HStack {
            ForEach(1..<6) { index in
                Star(fill: fillingFor(index))
            }
        }
    }
    
    private func fillingFor(_ index: Int) -> Bool {
        index <= rating
    }
}

struct Star: View {
    
    let fill: Bool
    
    var body: some View {
        Image(systemName: fill ? "star.fill" : "star")
            .resizable()
            .frame(width: 20, height: 20)
            .foregroundStyle(.yellow)
    }
}
