//
//  Benefit.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 23/09/25.
//

import Foundation

// 1. Define benefit model
struct Benefit: Identifiable {
    let id = UUID()
    let icon: String
    let text: String
}
