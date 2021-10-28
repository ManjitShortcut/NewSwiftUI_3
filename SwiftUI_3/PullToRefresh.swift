//
//  PullToRefresh.swift
//  SwiftUI_15
//
//  Created by Manjit on 03/10/2021.
//

import SwiftUI

struct PullToRefresh: View {
   @State  var totalList = 100
    
    var body: some View {
        NavigationView {
            List(1..<self.totalList) { row in
                Text("Row \(row)")
            }.refreshable {
                self.totalList = 20
                print("refresh item")
            } // refreshable is async wait
        }
    }
}

struct PullToRefresh_Previews: PreviewProvider {
    static var previews: some View {
        PullToRefresh()
    }
}
