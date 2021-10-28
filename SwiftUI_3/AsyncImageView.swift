//
//  AsyncImageView.swift
//  SwiftUI_15
//
//  Created by Manjit on 03/10/2021.
//

import SwiftUI

/*
  Async image view is used for download image from url
 You cam modified the background of the image by pace holder
 */
struct AsyncImageView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string:"https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-13-pro-max-01.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.green
            }.frame(width: 120, height: 120, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 25))
        }
    }
}

struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}
