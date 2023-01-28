//
//  HistoryItemView.swift
//  Ex1Simple
//
//  Created by new on 17/1/2023.
//

import SwiftUI

struct HistoryItemView: View {
    var imgName:String = "0_100w"
    var textStr:String = "Test Pizza"
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            Image(imgName)
                .clipShape(Circle())
                .shadow(radius: 5, x: 5, y: 5)
            Text(textStr)
                .font(.title)
            Spacer()
        }
//        .overlay(
//            Image(systemName: "chevron.right.square").foregroundColor(Color("G3"))
//                .font(.title)
//            ,alignment: .trailing
//        )
    }
}

struct HistoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryItemView()
    }
}
