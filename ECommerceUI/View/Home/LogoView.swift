//
//  LogoView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .modifier(LogoTitleModifiers())
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30,alignment: .center)
            Text("Down".uppercased())
                .modifier(LogoTitleModifiers())
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView().previewLayout(.sizeThatFits).padding()
    }
}
