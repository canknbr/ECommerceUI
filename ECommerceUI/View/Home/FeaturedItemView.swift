//
//  FeaturedItemView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct FeaturedItemView: View {
    //: property
    let player : Player
    //: body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
    }
}

//: preview
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0]).previewLayout(.sizeThatFits).padding()
            .background(colorBackground)
    }
}
