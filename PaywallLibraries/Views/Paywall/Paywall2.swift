//
//  Paywall2.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 23/09/25.
//

import SwiftUI

struct Paywall2: View {
    
    // define benefit
    private let benefits: [Benefit] = [
        .init(icon: "play.fill", text: "Unlimited Skips"),
        .init(icon: "waveform", text: "High-Quality Audio"),
        .init(icon: "arrow.down.circle.fill", text: "Unlimited Downloads"),
        .init(icon: "music.note.list", text: "Custom Playlists"),
        .init(icon: "leaf.fill", text: "Ad-Free Experience")
        
    ]
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                
                // add background
                Image("bgpaywall2")
                    .resizable()
                    .ignoresSafeArea()
                    .accessibilityHidden(true)
                
                // content
                VStack{
                
                    Spacer()
                    Text("Experience Music Without Limits")
                    
                    VStack(alignment: .leading){
                        Text("What's included")
                        ForEach(benefits){ benefit in
                            BenefitRow(Benefit: benefit)
                        }
                    }
                    
                    Spacer()
                    // Mark - Bottom Container
                    VStack{
                        
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
                        
                        HStack{
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
                .padding(.horizontal, 16)
                
                
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button{
                        print("Button tapped")
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
