//
//  ProductModel2.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 26/09/25.
//

import Foundation

struct ProductModel2: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let price: Double
    let currency: String
    let supportingText: String
}
