//
//  ContentView.swift
//  GroceryApp
//
//  Created by Preju Kanuparthy on 1/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var changeScreen = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                Text("We deliver\n groceries at your\n doorstep")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                
                Text("Grocerr gives you fresh vegetables and fruits, \nOrder fresh at Grocerr")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                
                Button() {
                changeScreen = true
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                        Text("Get Started")
                            .foregroundColor(.white)
                            .bold()
                            
                    }
                }
                .frame(width: 200, height: 70)
                .foregroundColor(.purple)
            }
            .navigationDestination(isPresented: $changeScreen) {
                Shop()
            }
        }
    }
}

#Preview {
    ContentView()
}
