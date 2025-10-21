//
//  Paywall7.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 04/10/25.
//

import SwiftUI

struct Paywall7: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack{
            
            VStack{
                HStack{
                    Button{
                        dismiss()
                    }label: {
                        Image(systemName: "xmark")
                            .font(.default)
                            .foregroundStyle(.foreground)
                            .frame(width: 32, height: 32)
                            .glassEffect(.regular)
                    }
                    
                    Spacer()
                    Button{
                        
                    }label:{
                        Text("Restore purchase")
                            .foregroundStyle(.secondary)
                            .padding(.horizontal, 12)
                            .frame(height:32)
                            .glassEffect(.regular)
                    }
                    .buttonStyle(.plain)
                }
                
                Spacer()
                
                VStack(spacing: 8){
                    Text("Unlock Advanced\nCRM Tools")
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                    Text("Boost your sales efficiency")
                        .foregroundStyle(.secondary)
                    
                }
                
                Spacer()
                
                // Footer
                VStack{
                    VStack{
                        Text("Enjoy unlimited access for 7 days,")
                        Text("then $39.99 annually")
                    }
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    
                    Button{
                        
                    }label: {
                        Text("Start 7-day trial")
                            .font(.headline)
                            .padding(.vertical, 16)
                            .frame(maxWidth: .infinity)
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(Capsule())
                    }
                }
                
                
                
                
                
            }
            .padding(.horizontal, 16)
            
            
        }
    }
}

#Preview {
    Paywall7()
}
