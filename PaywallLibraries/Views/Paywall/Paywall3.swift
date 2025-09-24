//
//  Paywall3.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 24/09/25.
//

import SwiftUI

struct Paywall3: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Rectangle()
                    .fill(
                        LinearGradient(
                            colors: [.white, Color.gray.opacity(0.3)],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .ignoresSafeArea()
                
                // Content
                VStack(spacing: 24){
                    
                    // Title area
                    VStack (spacing: 12){
                        // Heading
                        HStack{
                            Text("Upgrade to AI")
                                .font(.title2)
                                .bold()
                            Text("Plus")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 6)
                                .background(.blue)
                                .foregroundStyle(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        }
                        Text("Unlock limitless conversations and quicker responses with AI Plus")
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.secondary)
                    }
                    
                    // Button area
                    VStack (spacing: 12){
                        Button{
                            print("Button tapped")
                        } label: {
                            Text("Continue")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .fontWeight(.semibold)
                                .background(.blue)
                                .foregroundStyle(.white)
                                .clipShape(Capsule())
                                
                        }
                        
                        HStack {
                            Text("Cancel anytime")
                            Text("·")
                            Link("Terms", destination: URL(string: "#")!)
                            Text("·")
                            Link("Privacy", destination: URL(string: "#")!)
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    }
                    
                    
                    
                    
                }
                .padding(.horizontal, 24)
                
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading){
                    Button {
                        print("Button tapped")
                    } label: {
                        Image(systemName: "xmark")
                            .font(.body)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        print("Button tapped")
                    } label: {
                        Text("Restore purchases")
                    }
                }
                
            }
        }
    }
}

#Preview {
    Paywall3()
}
