//
//  Paywall1.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 22/09/25.
//

import SwiftUI

struct Paywall1: View {
    
    // define the benefit
    private let benefits: [Benefit] = [
        .init(icon: "checkmark.seal.fill", text: "Advanced Modeling Tools"),
        .init(icon: "checkmark.seal.fill", text: "High-Resolution Exports"),
        .init(icon: "checkmark.seal.fill", text: "Unlimited Projects"),
        .init(icon: "checkmark.seal.fill", text: "Exclusive Textures"),
        .init(icon: "checkmark.seal.fill", text: "Priority Rendering"),
        .init(icon: "checkmark.seal.fill", text: "Customizable Templates")
    ]
    
    @State private var isTrialOn: Bool = false
    
    
    var body: some View {
        
        
        VStack(alignment: .leading){
            
            VStack(alignment: .leading, spacing: 24){
                Text("Go Premium")
                    .font(.largeTitle)
                
                // call the benefit list
                ForEach(benefits) { benefit in
                    BenefitRow(Benefit: benefit)
                    
                }
            }
            
            
            
            Toggle(isOn: $isTrialOn) {
                Text("Enable 3 day free trial")
            }
            
            Button {
                print("Button tapped!")
            } label: {
                Text("Continue")
                    .padding()
                    .foregroundStyle(.white)
                    .cornerRadius(12)
                    .frame(maxWidth: .infinity)
                    .background(.black)
                    
                
            }
            
            HStack{
                Text("Cancel anytime")
                    .font(.footnote)
                Link("Privacy", destination: URL(string: "#")!)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                Link("Terms", destination: URL(string: "#")!)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(.horizontal, 16)

        
    }
}

#Preview {
    Paywall1()
}
