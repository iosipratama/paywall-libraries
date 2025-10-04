//
//  SO1.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 04/10/25.
//

import SwiftUI

struct SO1: View {
    
    @Environment(\.dismiss) private var dismiss
    
    // Use AttributedString to have span like style
    private var promoText: AttributedString {
        var s = AttributedString("Get a 50% discount on our annual subscription, now only $29.99/year for a limited time.")
        // Set base styling
        s.font = .title2
        s.foregroundColor = .gray
        // Emphasize specific spans
        if let r1 = s.range(of: "50% discount") {
            s[r1].foregroundColor = .black
            s[r1].font = .title2.weight(.semibold)
        }
        if let r2 = s.range(of: "$29.99/year") {
            s[r2].foregroundColor = .black
            s[r2].font = .title2.weight(.semibold)
        }
        return s
    }
    
    var body: some View {
        VStack{
            HStack{
                Button{
                    dismiss()
                }label: {
                    Image(systemName: "xmark")
                        .frame(width: 32, height: 32)
                        
                        .font(.footnote)
                        .background(.gray.opacity(0.2))
                        .foregroundStyle(.gray)
                        .cornerRadius(32)
                }
                
                
                Spacer()
                
                Button {
                    
                }label: {
                    Text("Restore Purchase")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                        .frame(height: 32)
                        .padding(.horizontal, 12)
                        .background(.gray.opacity(0.2))
                        .clipShape(Capsule())
                }
                
                
            }
            .padding(.top, 16)
            
            VStack{
                
                Spacer()
                VStack(alignment: .leading, spacing: 12){
                    
                    Image("runsyncpro")
                    Text(promoText)
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

