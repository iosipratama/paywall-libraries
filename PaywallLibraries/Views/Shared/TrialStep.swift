//
//  TrialStep.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 30/09/25.
//

import SwiftUI

struct TrialStep: View {
    let icon: String
    let title: String
    let description: String
    let isLast: Bool
    
    
    var body: some View {
        HStack(alignment: .top){
            VStack{
                // Icon inside circle
                Image(systemName: icon)
                    .frame(width: 28, height: 28)
                    .foregroundStyle(.white)
                    .background(Circle().fill(.purple))
                
                // Vertical line
                if !isLast {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 2)
                        .frame(maxHeight: 32)
                    
                }
            }
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .bold()
                Text(description)
                    .font(.subheadline)
                    
                
            }
            Spacer()
        }
    }
}

#Preview {
    TrialStep(icon: "checkmark.circle.fill", title: "Today", description: "Start exploring premium features today!", isLast: true)
}
