//
//  ContentView.swift
//  internship-swift
//
//  Created by Alexandr on 4/2/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor(Color("TextColor"))
        ]
        appearance.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor(Color("TextColor"))
        ]
        appearance.backgroundColor = UIColor(Color("PrimaryColor"))
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
    }
    
    var body: some View {
        
        let hardcoded = ItemModel.init(description: "Some very long description sdakhjjdbkajsd sadjhas fjhas fjsa fjhas fajhs fajsh", expertComment: "Experts thoughts on that fact are sakjdasdbas fas fjas fsjah fashj fjas fjhsa fasjhf ", id: 1, imageUrl: "", title: "Really long title that ypu ever saw in ypur whole life")
        let models = [ItemModel.init(), ItemModel.init(), ItemModel.init(), hardcoded]

        NavigationView {
            ZStack {
                BackgroundView()
                List {
                    ForEach(models, id: \.self) { item in
                            ListItem(itemModel : item)
                        
                    }
                    .listRowBackground(Color.clear)
                }
                .navigationBarTitle("SHARETRADE")
            }
        }
    }
} 

struct ListItem: View {
    let itemModel: ItemModel
    
    var body: some View {
        NavigationLink (
            destination: DetailView(item: itemModel)
        )
        {
            VStack(alignment: .center, spacing:0) {
                ItemImage(height: 180)
                ItemTitle(itemModel: itemModel)
            }
            .padding(.vertical, 8)
            .border(Color.black, width: 2.0)
            .background(Color("PrimaryColor"))
        }
    }
    
    struct ItemTitle: View {
        let itemModel: ItemModel
        
        var body: some View {
            Text(itemModel.title)
                .font(Font.title2.weight(.bold))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color("TextColor"))
                .padding(.trailing, 20.0)
                .padding(.leading, 20.0)
                .lineLimit(4)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone 11")
        }
    }
}
