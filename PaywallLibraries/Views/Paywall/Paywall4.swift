//
//  Paywall4.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 25/09/25.
//

import SwiftUI

struct Paywall4: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            
            VStack{
                VStack{
                    Image("paywall4-image")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFit()
                        
                    
                    Image("snapstock")
                }
                
                Spacer()
                Spacer()
                
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
                    .foregroundStyle(.white.opacity(0.4))
                }
                
                
            }
        }
        
    }
    
}

#Preview {
    Paywall4()
}
