//
//  Task.swift
//  SwiftUI_15
//
//  Created by Manjit on 07/10/2021.
//

import SwiftUI

struct Task: View {
    var body: some View {
        ScrollView {
            Text("Hello worlo")
        }.task {
            
        }
    }
}

struct Task_Previews: PreviewProvider {
    static var previews: some View {
        Task()
    }
}
