//
//  ProductModel.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 24/09/25.
//

import Foundation

struct SubscriptionPackage: Identifiable,Equatable {
    let id = UUID()
    let title: String
    let price: Double
}
