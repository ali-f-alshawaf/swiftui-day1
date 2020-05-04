//
//  CW2.swift
//  swiftui day1
//
//  Created by ALI on 5/3/20.
//  Copyright © 2020 ALI. All rights reserved.
//

import SwiftUI

struct CW2: View {
    @State var pageNumber = ""
    var body: some View {
        ZStack{
            RamadanBG()
            VStack{
                Text("Page \(pageNumber)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                TextField("رقم الصفحة", text: $pageNumber)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .multilineTextAlignment(.trailing)
                    .frame(height:90)
                
            }
        }
    }
}

struct CW2_Previews: PreviewProvider {
    static var previews: some View {
        CW2()
    }
}
