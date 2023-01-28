//
//  ListHeaderView.swift
//  Ex1Simple
//
//  Created by new on 18/1/2023.
//

import SwiftUI

struct ListHeaderView: View {
    @ObservedObject var orderModel:OrderModel
    var header: String
    var body: some View {
        HStack {
            Text(header)
                .padding(.leading,5)
                .foregroundColor(Color("G2"))
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
        }
        .foregroundColor(Color("IP"))
        .font(.headline)
        .background(Color("G4"))
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(orderModel: OrderModel(), header: "Menu")
    }
}
