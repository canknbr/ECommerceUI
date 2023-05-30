//
//  CodableBundleExtension.swift
//  ECommerceUI
//
//  Created by Can Kanbur on 30.05.2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file : String) -> T {
        // loacate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) in bundle")
        }
        
        // create a property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle")
        }
        
        // create decoder
        
        let decoder = JSONDecoder()
        
        // create property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        // return ready-to-use data
        
        return decodedData
        
    }
}
