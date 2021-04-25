//
//  ItemImage.swift
//  internship-swift
//
//  Created by Alexandr on 4/13/21.
//

import SwiftUI

struct ItemImage: View {
    var height: CGFloat?
    let url: String?
    
    var body: some View {
        AsyncImage (url: URL(string: url!)!, placeholder: {
            Image(systemName: "captions.bubble")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: height)
                .font(Font.subheadline.weight(.thin))
                .foregroundColor(.white)
        })
        .aspectRatio(contentMode: .fit)
        .frame(height: height)
    }
}

struct ItemImage_Previews: PreviewProvider {
    static var previews: some View {
        ItemImage(url: "https://image.tmdb.org/t/p/original/pThyQovXQrw2m0s9x82twj48Jq4.jpg")
            .background(Color(.lightGray))
    }
}
