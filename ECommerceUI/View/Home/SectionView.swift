//
//  SectionView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct SectionView: View {
    @State var rotationClockwise = false
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .bold()
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotationClockwise ? 90 : -90))
            Spacer()
        }
        .background(colorGray.cornerRadius(20))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotationClockwise: false).previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
