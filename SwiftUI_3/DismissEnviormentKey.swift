//
//  DismissEnviormentKey.swift
//  SwiftUI_15
//
//  Created by Manjit on 07/10/2021.
//

import SwiftUI

/*
 New environemnt key is dismsss to dismisview
 */

struct DetailPage: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct ListView: View {
    var body: some View {
        Text("List view")
    }
}

struct DetailPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailPage()
    }
}
