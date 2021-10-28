//
//  Badge.swift
//  SwiftUI_15
//
//  Created by Manjit on 04/10/2021.
//

import SwiftUI
/*
 Badge also used in tab-item and list item also but the problem is if you apply badge value to parent item the child item will not show badge item
 Badges are only displayed in list rows and iOS tab bars.
 */
struct Badge: View {
    var body: some View {
        TabView{
            NavigationView {
                List {
                    Text("Wifi").badge("Hello")
                    Text("Bluetooth").badge("On")
                }.navigationTitle("Badge Value")
                
            }
            .tabItem {
                    Label("Home",systemImage: "house")
                }.badge(5)
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
