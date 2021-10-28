//
//  SeparatorLineColor.swift
//  SwiftUI_15
//
//  Created by Manjit on 04/10/2021.
//

import SwiftUI

struct SeparatorLineColor: View {
    var body: some View {
        List{
            Text("Manjit").listRowSeparatorTint(.red,edges: .all)
           Text("Amit").listRowSeparator(.hidden)
            Text("John").listRowSeparator(.hidden)
        }
    }
}

struct SeparatorLineColor_Previews: PreviewProvider {
    static var previews: some View {
        SeparatorLineColor()
    }
}
