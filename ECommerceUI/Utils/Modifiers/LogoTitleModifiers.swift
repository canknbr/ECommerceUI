//
//  LogoTitleModifiers.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct LogoTitleModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .fontWeight(.black)
            .foregroundColor(.black)
    }
}


