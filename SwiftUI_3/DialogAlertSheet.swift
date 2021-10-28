//
//  DialogSheet.swift
//  SwiftUI_15
//
//  Created by Manjit on 04/10/2021.
//


/*
 Conformation dialog for is new  api for swift ui
 */
import SwiftUI
struct DialogAlertSheet: View {
    @State private var showingOption =  false
    @State private var selected = "None"
    @State private var showAlert =  false

    var body: some View {
        VStack{
            VStack {
                Text(selected)
                Button("Confirm paint color"){
                    showingOption =  true
                }
            }
            Button("Show Alert"){
                showAlert =  true
            }
        }.alert("show alert", isPresented: $showAlert) {
            Button("Ok"){
                selected = "Red"
            }
        }.confirmationDialog("Show confirm dialog", isPresented: $showingOption,titleVisibility: .visible) {
            Button("Red"){
                selected = "Red"
            }
            Button("Green") {
                selected = "Green"
            }
            Button("Cancel",role: .destructive) {
            }
        }
    }
}

struct DialogSheet_Previews: PreviewProvider {
    static var previews: some View {
        DialogAlertSheet()
    }
}
