//
//  Paywall2.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 23/09/25.
//

import SwiftUI

struct Paywall2: View {
    
    // store data in variable called benefits conforming to Benefit data model
    // Initialize
    private let benefits: [Benefit] = [
        .init(icon: "play.fill", text: "Unlimited Skips"),
        .init(icon: "waveform", text: "High-Quality Audio"),
        .init(icon: "arrow.down.circle.fill", text: "Unlimited Downloads"),
        .init(icon: "music.note.list", text: "Custom Playlists"),
        .init(icon: "leaf.fill", text: "Ad-Free Experience")
        
    ]
    
    @State private var selectedOption: SubscriptionPackage?
    
    private let options: [SubscriptionPackage] = [
        .init(title: "Yearly", price: 29.99),
        .init(title: "Monthly", price: 4.99)
        
    ]
    
    @Environment(\.dismiss) private var dismiss

    
    
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                
                // add background
                Image("bgpaywall2")
                    .resizable()
                    .ignoresSafeArea()
                    .accessibilityHidden(true)
                
                // content
                VStack(alignment: .leading, spacing: 24){
                
                    Spacer()
                    VStack(alignment: .center, spacing: 8){
                        Image("musicflowlogo")
                        Text("Experience Music Without Limits")
                            .foregroundStyle(.white)
                            .fontWeight(.medium)
                    }
                    .frame(maxWidth: .infinity)
                    
                   
                    
                    // MARK - Product Package
                    VStack{
                        ForEach(options) { option in
                            Button {
                                selectedOption = option
                            } label: {
                                SubscriptionRow(option: option, isSelected: selectedOption == option)
                            }
                            .buttonStyle(.plain)
                            
                            // add divider
                            if option != options.last {
                                Divider()
                                    .padding(.leading, 44)
                            }
                            
                        }
                    }
                    .background(.ultraThinMaterial)
                    // add border radius
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .overlay {
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .stroke(.white.opacity(0.3), lineWidth: 1)
                    }
                    .onAppear{
                        // defaultSelection
                        selectedOption = options.first!
                    }
                    
                    //
                    
                    
                    VStack(alignment: .leading, spacing: 22){
                        Text("What's included:")
                            .foregroundStyle(.secondary)
                        
                        ForEach(benefits){ benefit in
                            BenefitRow(Benefit: benefit)
                        }
                    }
                    
                    Spacer()
                    // Mark - Bottom Container
                    VStack(spacing:6){
                        
                        Button{
                            print("Button tapped")
                        } label: {
                            Text("Continue")
                                .padding()
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                .background(.purple)
                                .cornerRadius(16)
                        }
                        
                        HStack(spacing: 12){
                            Link(destination: URL(string: "#")!) {
                                Text("Terms")
                                    .font(.subheadline)
                                    .foregroundStyle(.black.opacity(0.6))
                            }
                            Link(destination: URL(string: "#")!) {
                                Text("Privacy")
                                    .font(.subheadline)
                                    .foregroundStyle(.black.opacity(0.6))
                            }
                        }
                    }
                    .padding(.bottom, 36)
                    
                    
                    
                    
                }
                .padding(.horizontal, 32)
                
                
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button{
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.body)
                    }
                    
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    Button("Restore Purchase"){
                        print("Action tapped")
                    }
                    
                }
                
            }
        }
        
        
        
    }
}

#Preview {
    Paywall2()
}
