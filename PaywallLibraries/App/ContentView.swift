//
//  ContentView.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 22/09/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var showPaywall5 = false
    @State var showPaywall6 = false
    @State var showSO1 = false
    @State var showSO2 = false
    
    
    var body: some View {
        NavigationStack{
            List {
                Section("Paywalls") {
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
                        showPaywall5 = true

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
                    
                    Button {
                        showPaywall6 = true
                    } label: {
                        HStack {
                            Text("Paywall 6")
                                .foregroundStyle(.black)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.subheadline)
                                .foregroundStyle(.black.opacity(0.3))
                        }
                    }
                    
                    
                    
                    
                    .sheet(isPresented: $showPaywall6){
                        Paywall6()
                         .presentationDetents([.large])
                    }
                    .sheet(isPresented: $showPaywall5) {
                        Paywall5()
                            .presentationDetents([.height(560)])
                    }
                }
                
                Section("Special Offers") {
                    Button {
                        showSO1 = true
                    } label: {
                        Text("Special Offer 1")
                            .foregroundStyle(.black)
                    }
                    
                    Button {
                        showSO2 = true
                    }label: {
                        Text("Special Offer 2")
                            .foregroundStyle(.black)
                    }
                    
                    .sheet(isPresented: $showSO1) {
                        SO1()
                            .presentationDetents([.large])
                    }
                    
                    .sheet(isPresented: $showSO2) {
                        SO2(targetDate: Date().addingTimeInterval(600))
                            .presentationDetents([.large])
                    }
                }
                
                
                
            }
         
            .navigationTitle("Paywall Libraries")
            .toolbarTitleDisplayMode(.inline)
        }
        
        
    }
}

#Preview {
    ContentView()
}
