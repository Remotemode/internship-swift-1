//
//  ContentView.swift
//  internship-swift
//
//  Created by Alexandr on 4/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var info: AppDelegate
    
    init(appDelegate: AppDelegate) {
        self.info = appDelegate
        
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

        NavigationView {
            ZStack {
                BackgroundView()
                List {
                    ForEach(info.news, id: \.self) { item in
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
                ItemImage(height: 180, url: itemModel.imageUrl)
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
            ContentView(appDelegate: AppDelegate.init())
                .previewDevice("iPhone 11")
        }
    }
}
