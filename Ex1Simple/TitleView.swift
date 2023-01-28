//
//  TitleView.swift
//  Ex1Simple
//
//  Created by new on 17/1/2023.
//

import SwiftUI

struct TitleView: View {
    var title:String
    var isOpen: Bool? = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title).font(.largeTitle).fontWeight(.bold)
                .offset(x:-20)
        }.overlay(
//            Image(systemName: isOpen ?? false ?  "chevron.up.square" : "chevron.down.square")
            Image(systemName: "chevron.up.square")
            .rotationEffect(isOpen ?? false ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
            .animation(.easeInOut(duration: 0.5))
            .font(.title)
            .foregroundColor(isOpen != nil ? Color("G1") : .clear)
                   ,alignment: .leading
        )
        .offset(x:10)
        .foregroundColor( Color("G1") )
        .background(Color("G4"))
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Order Pizza", isOpen: true)
    }
}
