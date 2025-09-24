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
    
    // to close the view
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        
           
                
            // content
            NavigationStack{
                
                ZStack{
                    // add background
                    Image("bg-paywall1")
                        .resizable()
                        .ignoresSafeArea()
                        .accessibilityHidden(true)
                    
                    VStack(alignment: .leading){
                        
                        Spacer()
                        Spacer()
                        VStack(alignment: .leading, spacing: 24){
                            Text("Go Premium")
                                .font(.largeTitle)
                                .fontDesign(.serif)
                            
                            // call the benefit list
                            ForEach(benefits) { benefit in
                                BenefitRow(Benefit: benefit)
                                
                            }
                        }
                        
                        Spacer()
                        // MARK - Bottom Container
                        VStack(spacing: 24){
                            
                            // Trial
                            Toggle(isOn: $isTrialOn) {
                                Text("Enable 3 day free trial")
                            }
                            
                            VStack(spacing: 6){
                                // Main Button
                                Button {
                                    print("Button tapped!")
                                } label: {
                                    Text("Continue")
                                        .fontWeight(.semibold)
                                        .padding()
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity)
                                        .background(.black)
                                        .cornerRadius(12)
                                        
                                }
                                
                                // Legal Row
                                HStack(alignment: .center){
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
                            
                            
                            
                        }
                        .padding(.bottom, 24)
                        
                        
                    }
                    .padding(.horizontal, 16)
                    
                }
                
                // Remember to attach the navigation modifier to the content
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                // automatically hides back button
                .navigationBarBackButtonHidden(true)
                
                // adding toolbar
                
                .toolbar {
                    // Leading: close toolbar
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                                .font(.body)
                        }
                    }
                    
                    // Trailing: restore purchase
                    ToolbarItem(placement: .topBarTrailing){
                        Button {
                            print("Button tapped!")
                        } label: {
                            Text("Restore purchase")
                        }
                        
                    }
                    
                }
            }
            
            
            
       
        
        
        

        
    }
}

#Preview {
    Paywall1()
}
