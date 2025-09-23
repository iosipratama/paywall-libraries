//
//  BenefitRow.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 23/09/25.
//

import SwiftUI

struct BenefitRow: View {
    
    // 2.
    let Benefit: Benefit
    
    var body: some View {
        HStack(alignment: .center){
            Image(systemName: Benefit.icon)
                .font(.headline)
            Text(Benefit.text)
        }
    }
}
