//
//  ContentView.swift
//  Ex1Simple
//
//  Created by new on 16/1/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderModel: OrderModel
    @State var isMenuOpen: Bool = true
    var body: some View {
        return VStack {
//            ContentHeaderView().layoutPriority(2)
            Button(action: {self.isMenuOpen.toggle()}){
                TitleView(title: "Order Pizza", isOpen: isMenuOpen)}
            MenuListView(orderModel: orderModel).layoutPriority(self.isMenuOpen ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel).layoutPriority(isMenuOpen ? 0.5 : 1.0)
            Spacer()
        }
        .animation(.spring())
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
            ContentView(orderModel: OrderModel())
                .colorScheme(.dark)
                .background(.black)
                .environmentObject(UserPreferences())

        }
        
    }
}
