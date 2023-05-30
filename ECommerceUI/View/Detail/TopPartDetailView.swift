//
//  TopPartDetailView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct TopPartDetailView: View {
    @EnvironmentObject var shop: Shop
    @State var isAnimating = false
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }.offset(y: isAnimating ? -50 : -75)
            Spacer()
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : 35)
                .animation(.linear(duration: 0.6), value: isAnimating)
        }.onAppear {
            withAnimation(.linear(duration: 0.4)) {
                isAnimating = true
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
