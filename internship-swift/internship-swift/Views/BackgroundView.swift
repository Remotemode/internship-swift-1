//
//  BackgroundView.swift
//  internship-swift
//
//  Created by Alexandr on 4/24/21.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Color("BackgroundColor").ignoresSafeArea(edges: .all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
