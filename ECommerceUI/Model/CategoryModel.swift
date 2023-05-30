//
//  CategoryModel.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import Foundation

struct Category : Codable,Identifiable {
    let id : Int
    let name : String
    let image : String
}
