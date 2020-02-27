//
//  ContentView.swift
//  SwiftUITuts
//
//  Created by Gabriel on 2/10/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

struct ContentView : View {
    
    var body: some View {
        HStack{
            Image("img")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 5)            
            
            VStack {
                Text("Paulo Dichone")
                    .font(.headline)
                    .foregroundColor(Color.white)
                Text("buildappswithme.com")
                    .font(.subheadline)
                    .foregroundColor(Color.white)
                
                HStack {
                    Image(systemName: "t.square.fill")
                        .foregroundColor(Color.white)
                    Text(": @buildwithme")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                        .bold()
                        .italic()
                }
            }
        }.frame(height: 200)
            .padding(.horizontal, 10)
            .background(Color.orange)
            .cornerRadius(8)
            .shadow(radius: 5)
    }
}

