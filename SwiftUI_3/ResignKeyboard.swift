//
//  Resignkeyboard.swift
//  SwiftUI_15
//
//  Created by Manjit on 03/10/2021.
//

import SwiftUI

struct ResignKeyboard: View {
    
    enum Filed {
        case firstName
        case lastName
        case email
    }
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    
    @FocusState private var focusedField: Filed?
    
     var body: some View {
         NavigationView {
             VStack {
                 TextField("Enter Your first name", text: $firstName)
                     .textContentType(.givenName)
                     .submitLabel(.next).focused($focusedField,equals: .firstName)
                 TextField("Enter Your last name", text: $lastName)
                     .textContentType(.givenName)
                     .submitLabel(.next).focused($focusedField,equals: .lastName)
                 
                 TextField("Enter Your last name", text: $email)
                     .textContentType(.givenName)
                     .submitLabel(.join)
                     .focused($focusedField,equals: .email)
             }.onSubmit {
                 switch self.focusedField {
                 case .firstName:
                     focusedField = .lastName
                 case .lastName:
                     focusedField = .email
                 default:
                     print("everythig")
                 }
             }.navigationTitle("Focus TextFiled")
         }
         
    }
}

struct Resignkeyboard_Previews: PreviewProvider {
    static var previews: some View {
        ResignKeyboard()
    }
}
