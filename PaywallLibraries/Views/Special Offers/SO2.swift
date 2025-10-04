//
//  SO2.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 04/10/25.
//

import SwiftUI
import Combine

struct SO2: View {
    
    @Environment(\.dismiss) private var dismiss
    
    private var offertext: AttributedString {
        
        var s = AttributedString("Get 50% Off Premium Access This Halloween.")
        
        // set the base styling
        s.font = .body
        s.foregroundColor = .white.opacity(0.4)
        
        // set the span
        if let highlight = s.range(of: "Get 50%") {
            s[highlight].foregroundColor = .white
        }
        
        return s
        }
    
    let targetDate: Date
    @State private var now = Date()
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var timeRemaining: DateComponents {
        Calendar.current.dateComponents([.hour, .minute, .second], from: now, to: targetDate)
    }
    
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .ignoresSafeArea()
            
            VStack {
                Image("halloween")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFit()
                Spacer()
            }
            
            VStack{
                
                
                HStack{
                    Button {
                        dismiss()
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(.white)
                            .padding()
                            .glassEffect(.regular)
                    }
                    
                    Spacer()
                }
                .padding(.top)

                Spacer()
                Spacer()
                
                VStack(spacing: 24){
                    Text(offertext)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 224)
                        .lineHeight(.multiple(factor: 1.5))
                    
                    HStack(spacing: 12){
                        timeBlock(value: timeRemaining.minute ?? 0, label: "Minutes")
                        timeBlock(value: timeRemaining.second ?? 0, label: "Seconds")
                    }
                    
                }
                .padding(.bottom, 72)
                .onReceive(timer) {
                    input in
                    now = input
                }
                
                
                
                
                VStack (spacing: 12){
                    Button{
                        
                    }label: {
                        Text("Continue with $6.99")
                            .font(.title3.bold())
                            .bold()
                            .frame(maxWidth: .infinity)
                            .frame(height: 54)
                            .background(.orange)
                            .foregroundStyle(.black)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    
                    HStack{
                        Link("Privacy Policy", destination: URL(string: "https://www.google.com")!)

                        Link("Terms of Service", destination: URL(string: "https://www.google.com")!)
                    }
                    .foregroundStyle(.white.opacity(0.6))
                    .font(.footnote)
                }
                .padding(.horizontal, 16)
                .padding(.bottom)
                
            }
            .padding(.horizontal, 16)
        }
        
        
    }
    
    @ViewBuilder
    private func timeBlock(value: Int, label: String) -> some View {
        VStack {
            HStack{
                ForEach(String(format: "%02d", value).map {String($0)}, id: \.self){ digit in
                    Text(digit)
                        .font(.title)
                        .bold()
                        .frame(width: 40, height: 50)
                        .background(.gray.opacity(0.2))
                        .foregroundStyle(.white)
                        .cornerRadius(8)
                    
                }
            }
            Text(label)
                .font(.caption)
                .foregroundStyle(.gray)
        }
    }
    
}

#Preview {
    SO2(targetDate: Date().addingTimeInterval(600))
}

