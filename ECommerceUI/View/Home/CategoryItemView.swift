//
//  CategoryItemView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    var body: some View {
        Button {
            print("")
        } label: {
            Image(category.image)
                .resizable()
                .renderingMode(.template)
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(.gray)

            Text(category.name)
                .fontWeight(.light)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding()
        .background(Color.white.cornerRadius(20))
        .background(RoundedRectangle(cornerRadius: 20).stroke(.gray,lineWidth: 1))
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
