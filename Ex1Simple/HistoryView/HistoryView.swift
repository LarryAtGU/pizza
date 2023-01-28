//
//  HistoryView.swift
//  Ex1Simple
//
//  Created by new on 17/1/2023.
//

import SwiftUI

struct HistoryView: View {
    var history:HistoryModel = HistoryModel()
    @State var itemId = 0
    var body: some View {
        VStack {
//            ContentHeaderView()
            TitleView(title: "Pizza History")
            SelectedImageView(imgName: "\(self.itemId)_250w")
            NavigationView(){
            List(history.historyItems) {item in
                NavigationLink(destination: HistroyDetailView(item: item, imgId: self.$itemId)) {
                    HistoryItemView(imgName: "\(item.id)_100w", textStr: item.name)
                    }
                }
            }
//            Spacer()
        }.padding()
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            HistoryView()
            HistoryView().colorScheme(.dark).background(.black)

        }
    }
}


