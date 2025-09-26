//
//  Paywall3.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 24/09/25.
//

import SwiftUI

struct Paywall3: View {
    
    
    @State private var selectedOption: SubscriptionPackage?
    
    // store a data inside option conforming to SubscriptionPackage
    private let options: [SubscriptionPackage] = [
        .init(title: "Yearly", price: 29.99),
        .init(title: "Monthly", price: 4.99)
        
    ]
    
    // close the view
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack{
            ZStack {
                Rectangle()
                    .fill(
                        LinearGradient(
                            colors: [.white, Color.gray.opacity(0.2)],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .ignoresSafeArea()
                
                // Content
                VStack(spacing: 24){
                    
                    
                    // Image
                    Image("paywall3-image")
                        .padding(.top, 32)
                    
                   
                    
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
                            .foregroundStyle(.secondary)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .fixedSize(horizontal: false, vertical: true)
                            
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 24)
                
                    
                    
                    
                    
                    
                    // MARK - Product Package
                    VStack{
                        ForEach(options) { option in
                            Button {
                                selectedOption = option
                            } label: {
                                SubscriptionRow(option: option, isSelected: selectedOption == option, brandColor: .blue)
                                // make the hstack expand to fill the space
                                .frame(maxWidth: .infinity)
                            
                                // make the entire rectangle is tapable
                                .contentShape(Rectangle())
                            }
                            .buttonStyle(.plain)
                            
                            // add divider
                            if option != options.last {
                                Divider()
                                    .padding(.leading, 44)
                                    .padding(.trailing, 16)
                            }
                            
                            
                        }
                    }
                    
                    .background(.white)
                    // add border radius
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    
                    // add border
                    .overlay{
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .stroke(.white.opacity(0.3), lineWidth: 1)
                    }
                    
                    .shadow(color: .black.opacity(0.02), radius: 8, x: 0, y: 4)
                    .onAppear{
                        // default selection
                        // unwrap with optionals
                        selectedOption = options.first!
                    }
                    .padding(.horizontal, 24)
                     
                    
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
                    .padding(.bottom, 24)
                    .padding(.horizontal, 24)
                    
                    
                    
                    
                }
                .padding(.horizontal, 24)
                
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading){
                    Button {
                        dismiss()
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

