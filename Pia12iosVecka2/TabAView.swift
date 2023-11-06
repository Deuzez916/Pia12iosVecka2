//
//  TabAView.swift
//  Pia12iosVecka2
//
//  Created by Filip Nicklasson on 2023-11-06.
//

import SwiftUI

struct TabAView: View {
    
    @State private var myNumber = 0
    
    @State var fruit: String
    
    var body: some View {
        VStack {
            Text("Hej A")
            
            Spacer()
            
            Text(fruit)
                .font(.largeTitle)
                
            Spacer()
            
            Button(action: {
                myNumber = myNumber + 1
            }, label: {
                Text(String(myNumber))
                    .font(.title)
            })
            
            Text("Botten")
        }
    }
}

#Preview {
    TabAView(fruit: "Carrot")
}
