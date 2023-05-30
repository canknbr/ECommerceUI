//
//  FooterView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment:.center,spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweightt and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
            Text("Copyright © Can Kanbur\nAll right reserved")
                .font(.footnote)
                .bold()
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
