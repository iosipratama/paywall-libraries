//
//  SubscriptionRow2.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 26/09/25.
//

import SwiftUI

struct SubscriptionRow2: View {
    
    let option: ProductModel2
    let isSelected: Bool
    let brandColor: Color
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32){
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 4){
                    Text(option.title)
                        .font(.subheadline)
                        .bold()
                        .foregroundStyle(.white)
                    
                    
                    
                    Text(option.currency + String(option.price))
                        .font(.title3)
                        .foregroundStyle(.primary)
                        .foregroundStyle(.white)
                }
                Spacer()
                if isSelected {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundStyle(brandColor)
                        .font(.title2)
                }
                
               
                
            }
            
            
            Text(option.supportingText)
                .font(.footnote)
                .foregroundStyle(.white.opacity(0.4))
            
            
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 12)
        .frame(maxWidth: .infinity)
        .overlay {
            RoundedRectangle(cornerRadius: 18, style: .continuous)
                .stroke(isSelected ? brandColor : Color.gray.opacity(0.2), lineWidth: isSelected ? 2 : 1)
        }
        
        
    }
        
}

#Preview {
    SubscriptionRow2(option: ProductModel2(title: "Monthly", price: 4.99, currency: "US", supportingText: "Billed Monthly"), isSelected: true, brandColor: .red)
        .preferredColorScheme(.dark)
    
}
