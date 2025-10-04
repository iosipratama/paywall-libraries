//
//  Paywall6.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 27/09/25.
//

import SwiftUI

struct Paywall6: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(colors: [.purple.opacity(0.2), .black]
                                   , startPoint: .top,
                                   endPoint: .bottom)
                )
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Spacer()
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.body)
                            .foregroundStyle(.white)
                            .padding()
                            .glassEffect(.regular)
                    }
                }
                
                Spacer()
                Text("How your trial works")
                    .font(.title)
                    .bold()
                
                VStack{
                    TrialStep(
                        icon: "checkmark.circle.fill",
                        title: "Today",
                        description: "Start exploring premium features today!",
                        isLast: false
                        
                    )
                    
                    TrialStep(
                        icon: "bell.fill",
                        title: "Day 5",
                        description: "Get a friendly reminder before the free trial ends",
                        isLast: false
                        
                    )
                    
                    TrialStep(
                        icon: "star.fill",
                        title: "Day 7",
                        description: "You'll be billed after 7 days, cancel anytime before Jul 5th.",
                        isLast: true
                        
                    )
                }
                .padding()
                
                Spacer()
                
                // Footer
                VStack(spacing: 16){
                    VStack {
                        Text("Unlimited access for 7 days")
                        Text("then $39.99 annually")
                    }
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    
                    Button{
                        
                    } label : {
                        Text("Start Free Trial")
                            .frame(height: 54)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.white)
                            .bold()
                            .background(.purple)
                            .clipShape(RoundedRectangle(cornerRadius: 13))
                    }
                    Link("View All Plans", destination: URL(string: "#")!)
                        .foregroundStyle(.purple)
                        .fontWeight(.semibold)
                }
               
                
                .padding(.bottom, 24)
                
                
                
                
                
            }
            .padding(.top, 16)
            .padding(.horizontal, 16)
        }
        
        
        
    }
}

#Preview {
    Paywall6()
        .preferredColorScheme(.dark)
}
