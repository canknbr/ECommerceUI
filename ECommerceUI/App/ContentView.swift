//
//  ContentView.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties

    // MARK: - Body

    var body: some View {
        VStack {
            FooterView()
                .padding(.horizontal)
        }
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
