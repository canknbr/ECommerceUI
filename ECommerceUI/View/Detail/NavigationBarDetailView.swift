//
//  NavigationBarDetailView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct NavigationBarDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn){
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
                
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Spacer()
            
            Button {
                print("")
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
            .environmentObject(Shop())
    }
}
