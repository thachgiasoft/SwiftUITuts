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
        VStack {
            TeamView(imgName: "german", teamName: "german team")
        }
    }
}

struct TeamView : View {
    let imgName : String
    let teamName : String
    var body: some View {
        
        VStack{
            Image(imgName)
                .resizable()
                .frame(width: screenWidth * 0.90, height: screenHeight * 0.25)
                .scaledToFit()
            
            Text(teamName.capitalized)
                .bold()
                .frame(width: screenWidth * 0.90, height: screenHeight * 0.05,alignment: .center)
                .font(.largeTitle)
        }
    }
}

/*
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
 */
