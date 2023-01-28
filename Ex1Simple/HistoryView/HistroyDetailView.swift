//
//  HistroyDetailView.swift
//  Ex1Simple
//
//  Created by new on 20/1/2023.
//

import SwiftUI

struct HistroyDetailView: View {
    @State var isCloseMapPresented:Bool = false
    var item: HistoryItem
    @Binding var imgId: Int
    var body: some View {
        imgId=item.id
        return VStack {
            TitleView(title: item.name)
            MapView(latitude: item.latitude, longitude: item.longitude, regionRadius: 1000_000)
                .frame(height: 100)
            PresentMapButton(isPresented: $isCloseMapPresented, historyItem: item)
            Text(item.history)
        }
    }
}

struct HistroyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HistroyDetailView(item: testHistoryItem, imgId: .constant(0))
    }
}
