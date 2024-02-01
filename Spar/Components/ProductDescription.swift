import SwiftUI

struct ProductDescription: View {
    var description = ""
    
    var body: some View {
        VStack(spacing: 30) {
            VStack {
                HStack {
                    Text("Описание").fontWeight(.heavy)
                    Spacer()
                }.padding(.bottom, 8)
                HStack {
                    Text(description)
                    Spacer()
                }
            }
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Основные характеристики").fontWeight(.heavy)
                    Spacer()
                }
                HStack {
                    Text("Производство").padding(.bottom)
                    Spacer()
                    Text("Россия, Краснодарский край").frame(width: 200).multilineTextAlignment(.trailing).padding(.top, 4)
                }
                HStack {
                    Text("Энергетическая ценность, ккал/100г")
                    Spacer()
                    Text("25 ккал, 105 кДж").frame(width: 140).multilineTextAlignment(.trailing).padding(.bottom, 18)
                }.padding(.vertical, 6)
                HStack {
                    Text("Жиры/100г")
                    Spacer()
                    Text("0,1г").frame(width: 50).multilineTextAlignment(.trailing)
                }.padding(.vertical, 6)
                HStack {
                    Text("Белки/100г")
                    Spacer()
                    Text("1,3г").frame(width: 50).multilineTextAlignment(.trailing)
                }.padding(.vertical, 6)
                HStack {
                    Text("Углеводы/100г")
                    Spacer()
                    Text("3,3г").frame(width: 50).multilineTextAlignment(.trailing)
                }.padding(.vertical, 6)
                HStack {
                    Text("Все характеристики").foregroundStyle(.green).bold()
                    Spacer()
                }.padding(.vertical)
            }.padding(.top)
        }
    }
}
