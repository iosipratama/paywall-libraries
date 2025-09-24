//
//  SubscriptionRow.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 24/09/25.
//

import SwiftUI

struct SubscriptionRow: View {
    
    let option: SubscriptionPackage
    let isSelected: Bool
    
    private var periodSuffix: String {
        let lower = option.title.lowercased()
        if lower.contains("year") { return "/year" }
        if lower.contains("month") { return "/month" }
        return ""
    }
    
    var body: some View {
        HStack{
            
            // Radio button
            Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
                .foregroundStyle(isSelected ? .purple : .gray)
                .font(Font.system(size: 20))
            
            VStack(alignment: .leading){
                Text(option.title)
                    .font(.headline)
                    .bold()
                    .foregroundStyle(.primary)
                HStack(spacing: 4) {
                    Text(option.price, format: .currency(code: "USD"))
                    if !periodSuffix.isEmpty {
                        Text(periodSuffix)
                    }
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
            }
            Spacer()
            
            
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
    }
}

#Preview {
    SubscriptionRow(option: SubscriptionPackage(title: "Monthly Plan", price: 9.99), isSelected: true)
}
