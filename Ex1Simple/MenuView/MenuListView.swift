//
//  MenuListView.swift
//  Ex1Simple
//
//  Created by new on 17/1/2023.
//

import SwiftUI

struct MenuListView: View {
    @ObservedObject var orderModel: OrderModel
    var menuList = MenuModel().menu
    var body: some View {
        VStack {
            ListHeaderView(orderModel: orderModel, header: "Menu")
            NavigationView() {
                List(menuList) { item in
                    NavigationLink(destination: MenuDetailView(orderModel: orderModel, menuItem: item)) {
                        MenuItemView(menuItem: item).listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    }
                    
                }
                .navigationTitle("Pizza Order")
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView(orderModel: OrderModel())
    }
}




