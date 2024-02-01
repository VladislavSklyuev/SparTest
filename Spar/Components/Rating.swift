import SwiftUI

struct Rating: View {
    var rating = 0.0
    var numberOfReviews = 0
    
    var body: some View {
        HStack {
            Image(systemName: "star.fill").foregroundStyle(.yellow).fontWeight(.bold).offset(x: 7)
            Text("\(String(rating))").bold()
            Text("|").offset(x: -5, y: -2).foregroundStyle(.gray)
            Text("\(String(numberOfReviews)) отзывов").offset(x: -8).foregroundStyle(.gray)
            Spacer()
            Image("sale").resizable().frame(width: 70, height: 50).padding(.leading, 6).foregroundStyle(.green).fontWeight(.semibold)
        }
    }
}
