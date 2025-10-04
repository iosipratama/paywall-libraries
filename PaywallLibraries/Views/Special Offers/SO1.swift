//
//  SO1.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 04/10/25.
//

import SwiftUI

struct SO1: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            HStack{
                Button{
                    dismiss()
                }label: {
                    Image(systemName: "xmark")
                        .frame(width: 32, height: 32)
                        .foregroundStyle(.secondary)
                        .font(.footnote)
                        .background(.gray.opacity(0.2))
                        .cornerRadius(32)
                }
                
                
                Spacer()
                
            }
            .padding(.top, 16)
            
            VStack{
                
                Spacer()
                VStack(alignment: .leading, spacing: 12){
                    
                    Image("runsyncpro")
                    Text("Get a 50% discount on our annual subscription, now only $29.99/year for a limited time.")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                Spacer()
                Image("run")
                Spacer()
                
                Button{
                    
                }label: {
                    Text("Continue")
                        .padding()
                        .frame(height: 56)
                        .foregroundStyle(.white)
                        .font(.title3)
                        .bold()
                        .frame(maxWidth: .infinity)
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                
                HStack(spacing: 8){
                    Link("Terms of use", destination: URL(string:("#"))!)
                    Link("Privacy Policy", destination: URL(string:("#"))!)
                }
                .font(.footnote)
                .foregroundStyle(.secondary)
            }
            .padding(.horizontal, 16)
            
        }
        .padding(.horizontal, 16)
        
        
    }
}

#Preview {
    SO1()
}
