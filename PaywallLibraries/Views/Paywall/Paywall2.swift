//
//  Paywall2.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 23/09/25.
//

import SwiftUI

struct Paywall2: View {
    
    // define benefit
    private let benefits: [Benefit] = [
        .init(icon: "play.fill", text: "Unlimited Skips"),
        .init(icon: "waveform", text: "High-Quality Audio"),
        .init(icon: "arrow.down.circle.fill", text: "Unlimited Downloads"),
        .init(icon: "music.note.list", text: "Custom Playlists"),
        .init(icon: "leaf.fill", text: "Ad-Free Experience")
        
    ]
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                
                
                VStack{
                
                    Text("Experience Music Without Limits")
                    
                    VStack(alignment: .leading){
                        Text("What's included")
                        ForEach(benefits){ benefit in
                            BenefitRow(Benefit: benefit)
                        }
                    }
                    
                    
                    
                }
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button{
                        print("Button tapped")
                    } label: {
                        Image(systemName: "xmark")
                            .font(.body)
                    }
                    
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    Button("Restore Purchase"){
                        print("Action tapped")
                    }
                    
                }
                
            }
        }
        
        
        
    }
}

#Preview {
    Paywall2()
}
