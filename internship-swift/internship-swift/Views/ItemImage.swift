//
//  ItemImage.swift
//  internship-swift
//
//  Created by Alexandr on 4/13/21.
//

import SwiftUI

struct ItemImage: View {
    var height: CGFloat?
    
    var body: some View {
        Image(systemName: "captions.bubble")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: height)
            .font(Font.subheadline.weight(.thin))
            .foregroundColor(.white)
    }
}

struct ItemImage_Previews: PreviewProvider {
    static var previews: some View {
        ItemImage()
            .background(Color(.lightGray))
    }
}
