//
//  ContentView.swift
//  PaywallLibraries
//
//  Created by Iosi Pratama on 22/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List {
                NavigationLink("Paywall 1"){
                    Paywall1()
                }
                
                NavigationLink("Paywall 2"){
                    Paywall2()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
