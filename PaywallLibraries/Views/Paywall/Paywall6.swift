//
//  Paywall6.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 27/09/25.
//

import SwiftUI

struct Paywall6: View {
    
    
    var body: some View {
        VStack{
            Text("How your trial works")
            
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
            
            VStack {
                Text("Unlimited access for 7 days")
                Text("then $39.99 annually")
            }
            Button{
                
            } label : {
                Text("Start Free Trial")
                    .frame(height: 54)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 13))
            }
            Link("View All Plans", destination: URL(string: "#")!)
            
            
            
        }
    }
}

#Preview {
    Paywall6()
}
