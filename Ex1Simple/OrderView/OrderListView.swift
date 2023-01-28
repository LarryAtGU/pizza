//
//  OrderListView.swift
//  Ex1Simple
//
//  Created by new on 17/1/2023.
//

import SwiftUI

struct OrderListView: View {
    var orderModel: OrderModel
    var body: some View {
        VStack {
//            ListHeaderView(orderModel:orderModel, header: "Order")
//            List(orderModel.orders){item in
//                OrderRowView(orderItem:item)
//            }
            List{
                Section(
                    header:ListHeaderView(orderModel:orderModel, header: "Your Order")
                )
                {
                    ForEach(orderModel.orders) {item in
                    OrderRowView(orderItem:item)
                    }
                    .onDelete(perform: deleteOrderItem)
                }
            }

            
        }
        
        
    }
    func deleteOrderItem(at offset: IndexSet) -> Void {
        orderModel.orders.remove(atOffsets: offset)
    }
}


struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}


