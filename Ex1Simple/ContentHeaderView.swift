//
//  ContentHeaderView.swift
//  Ex1Simple
//
//  Created by new on 17/1/2023.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack{
                Image("Surf Board")
                    .resizable()
                    .scaledToFit()
//                    .scaledToFill()
                    .frame(minWidth: 200, idealWidth: 300, maxWidth: 400,
                    minHeight: 75,
                           idealHeight: 143, maxHeight: 150, alignment: .center)
                HStack {
                    Text("Blue Pizza Company")
                        .font(Font.custom("Avinir-Black", size: 20))
                        .foregroundColor(.white).padding(.leading, 25)
                    Spacer()
                }

            }
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
    }
}
