//
//  ContentView.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 22/09/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var showPaywall = false

    var body: some View {
        NavigationStack{
            List {
                NavigationLink("Paywall 1"){
                    Paywall1()
                }
                
                NavigationLink("Paywall 2"){
                    Paywall2()
                }
                
                NavigationLink("Paywall 3"){
                    Paywall3()
                }
                
                NavigationLink("Paywall 4"){
                    Paywall4()
                }
                
                Button {
                    showPaywall = true

                }label: {
                    HStack{
                        Text("Paywall 5")
                            .foregroundStyle(.black)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .font(.subheadline)
                            .foregroundStyle(.black.opacity(0.3))
                    }
                    
                }
                
                
                .sheet(isPresented: $showPaywall) {
                    Paywall5()
                        .presentationDetents([.height(560)])
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
