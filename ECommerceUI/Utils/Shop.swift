//
//  Shop.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import Foundation

class Shop: ObservableObject {
  @Published  var showingProduct: Bool = false
  @Published  var selectedProduct: Prodcut?
}
