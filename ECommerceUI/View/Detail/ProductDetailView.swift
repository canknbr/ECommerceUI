//
//  ProductDetailView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            HeaderDetailView()
                .padding(.horizontal)
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)

            VStack(alignment: .center, spacing: nil) {
                RatingSizeDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                }
                QuantityFavouriteDetailView()
                    .padding(.vertical,10)
                AddToCartDetailView()
                    .padding(.bottom,20)
                Spacer()
            }.padding(.horizontal)
                .background(
                    Color.white.clipShape(CustomShape())
                        .padding(.top, -100))
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green:shop.selectedProduct?.green ?? sampleProduct.green, blue:shop.selectedProduct?.blue ?? sampleProduct.blue))
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
    }
}
