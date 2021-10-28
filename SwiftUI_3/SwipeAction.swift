//
//  SwipeAction.swift
//  SwiftUI_15
//
//  Created by Manjit on 03/10/2021.
//

// swipe action with leading ad trailing
//.swipeActions(edge:.leading, allowsFullSwipe: true)

import SwiftUI
struct SwipeAction: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(1..<10) { item in
                    Text("Row \(item)").swipeActions(edge:.leading, allowsFullSwipe: true) {
                        Button("delete",role: .destructive){
                        }
                        Button("trash",role: .destructive){
                        }.tint(.black)
                        
                        Button("new",role: .destructive){
                        }.tint(.indigo)
                    }
                }
            }.navigationTitle("Swipe Actioon")
        }
    }
}

struct SwipeAction_Previews: PreviewProvider {
    static var previews: some View {
        SwipeAction()
    }
}
