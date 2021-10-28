//
//  ContentView.swift
//  SwiftUI_15
//
//  Created by Manjit on 03/10/2021.
//

import SwiftUI
struct OsCondition: View {
    @State private var name = ""
    var body: some View {
        VStack(alignment: .leading){
            TextField("Enter your name", text: $name)
             #if os(iOS)
                .submitLabel(.join)
                .padding()
             #endif
            }
    }
}

struct OsCondition_Previews: PreviewProvider {
    static var previews: some View {
        OsCondition()
    }
}
