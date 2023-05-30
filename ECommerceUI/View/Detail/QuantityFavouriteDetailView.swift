//
//  QuantityFavouriteDetailView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    @State private var counter: Int = 0
    @State private var heartLike = false
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    counter -= 1
                    feedback.impactOccurred()
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button {
                if counter < 100 {
                    counter += 1
                    feedback.impactOccurred()
                }
            } label: {
                Image(systemName: "plus.circle")
            }

            Spacer()

            Button {
                heartLike.toggle()
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor( heartLike ? .red : .gray.opacity(0.5))
                    .animation(.linear(duration: 0.2), value: heartLike)
            }

        }.font(.system(.title, design: .rounded))
            .foregroundColor(.black)
            .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
