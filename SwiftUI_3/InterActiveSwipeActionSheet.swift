//
//  PopOverActionSheet.swift
//  SwiftUI_15
//
//  Created by Manjit on 04/10/2021.
//

/*
Inter-active dismissed action sheet
 */
import SwiftUI
struct ExampleSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var termAccepted: Bool = false
    var body: some View{
        VStack {
            Text("Sheet view")
            Toggle("Accepted", isOn: $termAccepted)
        }.padding().interactiveDismissDisabled(!termAccepted)
    }
    func close() {
        presentationMode.wrappedValue.dismiss()
    }
}
struct PopOverActionSheet: View {
    @State private var showingSheet = false
    var body: some View {
        Button("Show sheet") {
            self.showingSheet.toggle()
        }.padding(.all).sheet(isPresented: $showingSheet, content: ExampleSheet.init).accessibilityLabel("Show sheet")
    }
}

struct PopOverActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        PopOverActionSheet()
    }
}
