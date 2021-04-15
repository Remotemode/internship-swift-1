//
//  DetailView.swift
//  internship-swift
//
//  Created by Alexandr on 4/8/21.
//

import SwiftUI

struct DetailView: View {
    let item: ItemModel
    var size: CGFloat?
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack() {
                DetailViewTitle(item: item)
                ItemImage()
                    .background(Color.black)
                DetailViewDescription(item: item)
                DetailViewExpertComment(item: item)
            }
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: .init())
    }
}

struct DetailViewTitle: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Text(item.title)
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.blue)
                .multilineTextAlignment(.leading)
            Spacer(minLength: 0)
        }
    }
}

struct DetailViewDescription: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Text(item.description)
                .font(.body)
                .foregroundColor(.blue)
                .multilineTextAlignment(.leading)
            Spacer(minLength: 0)
        }
    }
}

struct DetailViewExpertComment: View {
    let item: ItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(
                    """
                    Experts Comment

                    \(item.expertComment)
                    """
                )
                Spacer()
            }
            .padding()
        }
        .background(Color(.blue))
    }
}
