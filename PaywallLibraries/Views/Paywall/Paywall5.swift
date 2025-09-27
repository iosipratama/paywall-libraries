//
//  Paywall5.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 26/09/25.
//

import SwiftUI

struct Paywall5: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        VStack(spacing: 40){
            HStack{
                Spacer()
                Button {
                    dismiss()
                }label: {
                    Image(systemName: "xmark")
                        .padding()
                        .foregroundStyle(.black)
                        .glassEffect(.regular)
                }
            }
            .padding(.top, 16)
            .padding(.horizontal)
            
            
            
            // Heading
            VStack(spacing: 12){
                HStack{
                    Text("Upgrade to")
                    Text("Premium")
                        .foregroundStyle(.cyan)
                }
                .font(.largeTitle)
                .bold()
                
                Text("Boost your productivity with advanced features")
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, 24)
            
            
            
            // Feature list
            Grid(horizontalSpacing:24, verticalSpacing: 20){
                GridRow(alignment: .top){
                    VStack{
                        Image(systemName: "text.page")
                            .font(.system(size: 30))
                            .foregroundColor(.cyan)
                            .frame(width: 64, height: 64)
                            .background(.cyan.opacity(0.2))
                            .clipShape(.circle)
                        Text("Unlimited Notes")
                    }
                    .frame(maxWidth: 94)
                    .multilineTextAlignment(.center)
                    
                    VStack{
                        Image(systemName: "cloud.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.cyan)
                            .frame(width: 64, height: 64)
                            .background(.cyan.opacity(0.2))
                            .clipShape(.circle)
                        Text("Cloud\nSync")
                    }
                    .frame(maxWidth: 94)
                    .multilineTextAlignment(.center)
                    
                    
                    VStack{
                        Image(systemName: "paintpalette.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.cyan)
                            .frame(width: 64, height: 64)
                            .background(.cyan.opacity(0.2))
                            .clipShape(.circle)
                            
                        Text("Custom Themes")
                    }
                    .frame(maxWidth: 94)
                    .multilineTextAlignment(.center)
                    
                }
                
                GridRow(alignment: .top){
                    VStack{
                        Image(systemName: "square.and.arrow.up")
                            .font(.system(size: 30))
                            .symbolRenderingMode(.hierarchical)
                            .foregroundColor(.cyan)
                            .frame(width: 64, height: 64)
                            .background(.cyan.opacity(0.2))
                            .clipShape(.circle)
                        Text("Notes Sharing")
                    }
                    .frame(maxWidth: 94)
                    .multilineTextAlignment(.center)

                    VStack{
                        Image(systemName: "waveform.circle.fill")
                            .font(.system(size: 30))
                            .symbolRenderingMode(.hierarchical)
                            .foregroundColor(.cyan)
                            .frame(width: 64, height: 64)
                            .background(.cyan.opacity(0.2))
                            .clipShape(.circle)
                        Text("Voice\nNotes")
                    }
                    .frame(maxWidth: 94)
                    .multilineTextAlignment(.center)
                    
                    VStack{
                        Image(systemName: "lock.document")
                            .font(.system(size: 30))
                            .symbolRenderingMode(.hierarchical)
                            .foregroundColor(.cyan)
                            .frame(width: 64, height: 64)
                            .background(.cyan.opacity(0.2))
                            .clipShape(.circle)
                            
                        Text("Encrypted Noted")
                    }
                    .frame(maxWidth: 94)
                    .multilineTextAlignment(.center)
                    
                }
            }
            
            // MARK - Footer
            VStack(spacing: 8) {
                Button{
                    print("Button tapped")
                } label: {
                    VStack{
                        Text("Continue")
                            .bold()
                        Text("US 4.99/mo")
                            .font(.subheadline)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .foregroundStyle(.white)
                    .background(.cyan)
                    .clipShape(.capsule)
                }
                
                HStack{
                    Link("Restore Purchase", destination: URL(string: "#")!)
                    Link("Privacy", destination: URL(string: "#")!)
                    Link("Terms", destination: URL(string: "#")!)
                }
                .font(.footnote)
                .foregroundStyle(.secondary)
            }
            .padding(.horizontal, 24)
            
            
            
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        
    }
}

#Preview {
    Paywall5()
}
