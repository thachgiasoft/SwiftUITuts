//
//  AdaptableContentView.swift
//  SwiftUITuts
//
//  Created by Gabriel on 2/27/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct AdaptableContentView : View {
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

struct AdaptableContentView_Previews: PreviewProvider {
    static var previews: some View {
        AdaptableContentView()
    }
}
