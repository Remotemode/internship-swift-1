//
//  ContentView.swift
//  internship-swift
//
//  Created by Alexandr on 4/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                ListItem(itemModel: .init())
            }
            .navigationBarTitle("SHARETRADE")
        }
    }
}

struct ListItem: View {
    let itemModel: ItemModel
    
    var body: some View {
        NavigationLink(
            destination: DetailView(item: itemModel)
        )
        {
            VStack(alignment: .center, spacing:0) {
                ItemImage(height: 180)
                ItemTitle(itemModel: itemModel)
            }
            .padding(.vertical, 8)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2.0)
            .background(Color(.darkGray))
        }
    }
    
    struct ItemTitle: View {
        let itemModel: ItemModel
        
        var body: some View {
            Text(itemModel.title)
                .font(Font.title2.weight(.bold))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding(.trailing, 20.0)
                .padding(.leading, 20.0)
                .lineLimit(4)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone 8")
        }
    }
}
