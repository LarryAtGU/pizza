//
//  RatingView.swift
//  Ex1Simple
//
//  Created by new on 17/1/2023.
//

import SwiftUI

struct RatingView: View {
    var count: Int = 4
    var rating: [String] {
        let syName="\(count).circle"
        return Array(repeating: syName, count: count)
    }
    var body: some View {
        HStack {
            ForEach(rating, id: \.self) {
                item in
                    Image(systemName: item)
                        .font(.headline)
                    .foregroundColor(Color("G4"))
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(count: 5)
    }
}
