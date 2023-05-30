//
//  RatingSizeDetailView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct RatingSizeDetailView: View {
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)

                HStack(alignment: .center, spacing: 3) {
                    ForEach(1 ... 5, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(colorGray.cornerRadius(5))
                            .foregroundColor(.white)
                    }
                }
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button {
                            print("")
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(3))
                                .background(
                                    RoundedRectangle(cornerRadius: 5).stroke(colorGray,lineWidth: 2)
                                )
                        }
                        
                    }
                }
            }
        }
    }
}

struct RatingSizeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizeDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
