//
//  NavigationBarV.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties

    @State private var isAnimated = false

    // MARK: - Body

    var body: some View {
        HStack {
            Button {
                print("")
            } label: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .font(.title)
            } //: Button
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x:0,y: isAnimated ? 0 : -25)
                .onAppear {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            Button {
                print("")
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .foregroundColor(.black)
                        .font(.title)
                    Circle().fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            } //: Button
        } //: Hstack
    }
}

// MARK: - Preview

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView().previewLayout(.sizeThatFits)
            .padding()
    }
}
