//
//  MenuOption.swift
//  SwiftUI_15
//
//  Created by Manjit on 05/10/2021.
//

import SwiftUI

/*
 Menu option for long press
 and primary action for normal tap
 */
struct MenuOption: View {
    var body: some View {
       
        Menu("Option"){
            Button("Order Now",action: placeOrer)
            Button("Adjust order Now",action: ajustOrder)

        } primaryAction: {
            justDoit()
        }
    }
    
    func placeOrer() {
        print("Long press tap")

    }
    func ajustOrder() {
        print("Long press tap")
    }
    func justDoit() {
        print("Normal tap")
    }
}

struct MenuOption_Previews: PreviewProvider {
    static var previews: some View {
        MenuOption()
    }
}
