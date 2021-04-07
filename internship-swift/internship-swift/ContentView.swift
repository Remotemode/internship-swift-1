//
//  ContentView.swift
//  internship-swift
//
//  Created by Alexandr on 4/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:0) {
            Image(systemName: "captions.bubble")
                .resizable()
                .scaledToFit()
                .frame(height: 180)
                .font(Font.subheadline.weight(.thin))
                .foregroundColor(.white)
                .padding(.top, 5)
            Text("Reddit user claiming to be Tesla insider appeared to reveal bitcoin buy a month ago ")
                .font(Font.title2.weight(.bold))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(height:120)
                .padding(.trailing, 20.0)
                .padding(.leading, 20.0)
        }
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2.0)
        .background(Color(.darkGray))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
