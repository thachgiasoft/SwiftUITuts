//
//  LocationDetailsView.swift
//  SwiftUITuts
//
//  Created by Gabriel on 2/28/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct LocationDetailsView: View {
    var location : TravelLocation
    var body: some View {
        VStack {
            MapView(cordinates: location.locCoordinates)
                .frame(width: screenWidth, height: screenHeight * 0.65)
                .edgesIgnoringSafeArea(.top)
            Image(location.image)
                .resizable()
                .frame(width: screenWidth * 0.8, height: screenHeight * 0.3)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.purple, lineWidth: 8))
                .offset(y: screenHeight * -0.25)
                .padding(.bottom, screenHeight * -0.28)
            VStack {
                Text(location.name)
                    .font(.largeTitle).bold()
                    .foregroundColor(Color.purple)
                    .padding(.bottom)
                Text(location.desc)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }.padding()
        }
        
    }
}

struct ListView : View {
    var body: some View {
        NavigationView {
            List(locArray) { location in
                NavigationLink(destination:LocationDetailsView(location:location)) {
                    HStack {
                        Image(location.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        Text(location.name)
                    }
                }
            }.navigationBarTitle("Traveliser")
        }
    }
}

//struct LocationDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        LocationDetailsView()
//    }
//}
