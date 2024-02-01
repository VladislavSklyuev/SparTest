import SwiftUI

enum Tabs: String {
    case main = "Главная"
    case catalog = "Каиалог"
    case cart = "Корзина"
    case profile = "Профиль"
}

struct BottomBar: View {
    
    @Binding var selectedTab: Tabs
    
    var unit = ["Шт", "Кг"]
    @State private var selectedUnit = "Шт"
    
    var body: some View {


            HStack(alignment: .center) {
                Button {
                    selectedTab = .main
                } label: {
                    TabBarButton(buttonText: "Главная", imageName: "tree.circle", isActive: selectedTab == .main)
                }
                
                Button {
                    selectedTab = .catalog
                } label: {
                    TabBarButton(buttonText: "Каталог", imageName: "command", isActive: selectedTab == .catalog)
                }
                
                Button {
                    selectedTab = .cart
                } label: {
                    TabBarButton(buttonText: "Корзина", imageName: "cart", isActive: selectedTab == .cart)
                }
                
                Button {
                    selectedTab = .profile
                } label: {
                    TabBarButton(buttonText: "Профиль", imageName: "person", isActive: selectedTab == .profile)
                }
                
            }
    }
}

