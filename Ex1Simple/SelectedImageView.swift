//
//  SelectedImageView.swift
//  Ex1Simple
//
//  Created by new on 18/1/2023.
//

import SwiftUI

struct SelectedImageView: View {
    var imgName: String
    var body: some View {
        Image(imgName)
            .resizable()
            .scaledToFit()
            .cornerRadius(30)
            .shadow(radius: 5)
            
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(imgName: "pizza")
    }
}
