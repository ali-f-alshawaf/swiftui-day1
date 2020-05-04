//
//  ContentView.swift
//  swiftui day1
//
//  Created by ALI on 5/1/20.
//  Copyright © 2020 ALI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
 
    @State var thker = "اضغط هنا"
    var body: some View {
        ZStack {
            RamadanBG()
            Text(thker)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .multilineTextAlignment(.center)
                .onTapGesture {
                    self.thker = athkar.randomElement()!
            }
            
        }
    }
}



struct RamadanBG: View {
    var body: some View {
        ZStack{
            Image("BACKGROUND")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("Header")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image("Mosque")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
