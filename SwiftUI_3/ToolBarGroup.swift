//
//  ToolBarGroup.swift
//  SwiftUI_15
//
//  Created by Manjit on 05/10/2021.
//

import SwiftUI

/*
 Now in ios 15 you can use tool bar
 */
struct ToolBarGroup: View {
    @State private var name = "Taylor"
    @FocusState var isInputActive: Bool
    var body: some View {
        NavigationView {
            TextField("Enter your text",text:$name)
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button("Prev") {
                            isInputActive = false
                        }
                        Button("Next") {
                            isInputActive = false
                        }
                        Spacer()
                        Button("Done") {
                            isInputActive = false
                        }
                    }
                }.navigationTitle("Tool bar with text field")
        }
    }
}

struct ToolBarGroup_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarGroup()
    }
}
