//
//  Paywall4.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 25/09/25.
//

import SwiftUI

struct Paywall4: View {
    
    @State private var selectedOption: ProductModel2?
    
    // Store data
    private let options: [ProductModel2] = [
        .init(title: "Yearly", price: 45.99, currency: "US", supportingText: "Cancel anytime"),
        .init(title: "Weekly", price: 3.99, currency: "US", supportingText: "3-day trial")
    ]
    
    
    // close the view
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack{
                Rectangle()
                    .ignoresSafeArea()
                
                VStack{
                    Image("paywall4-image")
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()
                    
                    Spacer()
                }
                
                
                VStack(spacing: 24){
                    
                    
                    
                    Spacer()
                    
                    Image("snapstock")
                    
                    
                    // MARK - Feature List
                    VStack(spacing: 12){
                        
                        Text("Unlock All Features")
                            .textCase(.uppercase)
                            .foregroundStyle(.white.opacity(0.4))
                            .font(.system(size: 13))
                            .fontWeight(.semibold)
                        
                        HStack(alignment: .center, spacing: 36){
                            VStack(spacing: 12) {
                                Image("image")
                                Text("High Quality Photos")
                                    .font(.footnote)
                                    .foregroundStyle(.white.opacity(0.6))
                                    .multilineTextAlignment(.center)
                            }
                            .frame(maxWidth: 83)
                            
                            VStack(spacing: 12) {
                                Image("close")
                                Text("No Watermark")
                                    .font(.footnote)
                                    .foregroundStyle(.white.opacity(0.6))
                                    .multilineTextAlignment(.center)
                            }
                            .frame(maxWidth: 83)
                            
                            VStack(spacing: 12) {
                                Image("document")
                                Text("Extended Licensing")
                                    .font(.footnote)
                                    .foregroundStyle(.white.opacity(0.6))
                                    .multilineTextAlignment(.center)
                            }
                            .frame(maxWidth: 83)
                        }
                        
                    }
                    
                    
                    // Product List
                    HStack(spacing: 12){
                        ForEach(options){ option in
                            
                            Button{
                                selectedOption = option
                            } label: {
                                SubscriptionRow2(option: option, isSelected: selectedOption == option, brandColor: .red)
                                    // make the hstack expand to fill the space
                                    .frame(maxWidth: .infinity)
                                
                                    // make the entire rectangle is tapable
                                    .contentShape(Rectangle())
                            }
                            .buttonStyle(.plain)
                            
                        }
                    }
                    .padding(.horizontal, 24)
                    .onAppear{
                        selectedOption = options.first!
                    }
                    
                    
                    
                    // MARK - Footer
                    VStack{
                        Button{
                            print("button tapped")
                        } label: {
                            Text("Continue")
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.red)
                                .foregroundStyle(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                        }
                        
                        HStack(spacing: 8){
                            Text("Cancel anytime")
                            Text("·")
                            Link("Terms", destination: URL(string: String("#"))!)
                            Text("·")
                            Link("Privacy", destination: URL(string: String("#"))!)
                        }
                        .font(.footnote)
                        .foregroundStyle(.white.opacity(0.4))
                    }
                    .padding(.horizontal, 32)
                    .padding(.bottom,32)
                    
                    
                }
            }
            
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    Button{
                        
                    } label: {
                        Text("Restore Purchase")
                    }
                }
            }
        }
        
    }
    
}

#Preview {
    Paywall4()
}
