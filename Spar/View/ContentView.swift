import SwiftUI

struct ContentView: View {
    
    var unit = ["Шт", "Кг"]
    @State private var selectedUnit = "Шт"
    @State private var seleсtedTab: Tabs = .main
    
    var body: some View {
        Section {
            TabBar(images: ["chart.bar.doc.horizontal", "square.and.arrow.up", "heart"], width: 20, height: 22)
        }
        
        ScrollView {
            VStack(alignment: .leading, spacing: 4) {
                Section {
                    VStack {
                        ProductPicture(image: "lipa")
                        Rating(rating: 4.1, numberOfReviews: 19)
                        ShortProductDescription(productName: "Добавка \"Липа\" к чаю 200 г")
                        Country(image: "spain", imageDescription: "Испания, Риоха")
                        ProductDescription(description: "Флаваноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов")
                        Reviews()
                    }.padding().frame(maxWidth: .infinity)

                }.background(.white).padding(.top, 2)
                Section {
                    VStack {
                        Picker("", selection: $selectedUnit) {
                            ForEach(unit, id: \.self) {
                                Text($0)
                            }
                        }.pickerStyle(.segmented)
                        
                        HStack {
                            Price()
                            Spacer()
                            CustomStepper()
                        }.padding()
                    }.padding()
                }.background(.white)
            }.frame(maxWidth: .infinity)
                .background(.gray.opacity(0.2))
        }.background(.white)
        VStack {
            Section {
                VStack {
                    BottomBar(selectedTab: $seleсtedTab)
                }.frame(maxWidth: .infinity).padding(.top)
            }.background(.white)
        }.frame(maxWidth: .infinity)
            .background(.gray.opacity(0.2))
    }
}
