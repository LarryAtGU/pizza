//
//  ConfirmView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/13/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct ConfirmView: View {
    let sizes:[Size] = [.small, .medium, .large]
    var menuID:Int
    @Binding var quantity:Int
    @Binding var size:Size
    @Binding var isPresented:Bool
    @ObservedObject var orderModel:OrderModel
    @State var comment:String = ""
    
    ///extracts the menu item name based on `menuID`
    var name:String{
        orderModel.menu(menuID)?.name ?? ""
    }
    
    func addItem(){
        orderModel.add(menuID: menuID, size: size ,quantity: quantity, comments :comment)
        isPresented = false
    }
    
    var body: some View {
        VStack{
            Text("Confirm Order")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading)
            Divider()
            SelectedImageView(imgName: "\(menuID)_250w")
//                .onTapGesture (count: 2) {
//                    self.isPresented = false
//                }
                .gesture(
                    TapGesture(count: 2).onEnded {
                        self.isPresented=false
                        
                    }
                )
                .padding(10)
            Divider()
            Text("Confirm your order of \(quantity) \(size.formatted()) \(name) pizza")
                .font(.headline)
            TextField("Please leave your comment",text: $comment)
                .background(Color("G4"))
            SizePickerView(size: $size)
            QtyStepperView(quantity: $quantity)
            Spacer()
            HStack {
                Button(action: addItem){
                    Text("Add")
                        .font(.title)
                    .padding()
                    .background(Color("G4"))
                    .cornerRadius(10)
                }.padding([.leading, .bottom])
                Spacer()
                Button(action: {self.isPresented = false}){
                    Text("Cancel")
                        .font(.title)
                    .padding()
                    .background(Color("G4"))
                    .cornerRadius(10)
                }.padding([.bottom, .trailing])
            }
        }
        .background(Color("G3"))
        .foregroundColor(Color("IP"))
        .cornerRadius(20)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(menuID: 0, quantity: .constant(1), size: .constant(.small), isPresented: .constant(true), orderModel: OrderModel())
    }
}
