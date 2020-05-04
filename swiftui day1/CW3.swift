//
//  CW3.swift
//  swiftui day1
//
//  Created by ALI on 5/3/20.
//  Copyright © 2020 ALI. All rights reserved.
//

import SwiftUI

struct CW3: View {
    @State var thekr = athkar.randomElement()!
   @State var counter = 0
    var body: some View {
        ZStack{
            RamadanBG()
            VStack{
                Text(thekr)
                    .font(.system(size:19))
                    .bold()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
            
                Text("\(counter)")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .bold()
                    .padding(.horizontal, 70)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.1873394692)))
                    .clipShape(Capsule())
            }.onTapGesture {
            self.counter += 1
            }
        }.onLongPressGesture {
            self.thekr = athkar.randomElement()!
            self.counter = 0
        }.animation(.linear)
    }
}

struct CW3_Previews: PreviewProvider {
    static var previews: some View {
        CW3()
    }
}
