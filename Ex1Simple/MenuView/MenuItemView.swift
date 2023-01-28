//
//  MenuItemView.swift
//  Ex1Simple
//
//  Created by new on 17/1/2023.
//

import SwiftUI

struct MenuItemView: View {
    var menuItem: MenuItem = testMenuItem
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("\(menuItem.id)_100w")
    //                .border( Color("G4"), width: 2)
    //                .cornerRadius(15)
    //                .clipShape(Circle())
                    .clipShape(Capsule())
                    .shadow(radius: 5, x: 5, y: 5)
                VStack(alignment: .leading) {
                    Text(menuItem.name)
                        .font(.title)
                        .fontWeight(.light)
                    RatingView(count: menuItem.rating)
                }
                Spacer()
                
            }
            Text(menuItem.description)
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}


