//
//  ModifyValueInSwiftui.swift
//  SwiftUI_15
//
//  Created by Manjit on 07/10/2021.
//

import SwiftUI

struct User: Identifiable {
    let id =  UUID()
    var name: String
    var isContacted =  false
}
struct ModifyValueInSwiftui: View {
    
    @State private var users = [User(name: "Talor"),User(name: "adele"),User(name: "Justine")]
    
    var body: some View {
        List ($users) { $user in
            HStack {
                Text(user.name)
                Spacer()
                Toggle("User has been contacted",isOn: $user.isContacted).labelsHidden()
            }
        }
    }
}

struct ModifyValueInSwiftui_Previews: PreviewProvider {
    static var previews: some View {
        ModifyValueInSwiftui()
    }
}
