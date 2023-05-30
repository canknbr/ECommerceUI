//
//  CategoryGridView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(content: {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }, header: {
                    SectionView(rotationClockwise: false)
                }, footer: {
                    SectionView(rotationClockwise: true)
                }) 
            }.frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
