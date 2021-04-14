//
//  DetailView.swift
//  internship-swift
//
//  Created by Alexandr on 4/8/21.
//

import SwiftUI

struct DetailView: View {
    let item: ItemModel
    var body: some View {
        VStack {
            Text(item.title)
            ItemImage()
                .background(Color.black)
            Text(item.description)
            Text(item.expertComment)
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: .init())
    }
}
