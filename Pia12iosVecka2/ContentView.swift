//
//  ContentView.swift
//  Pia12iosVecka2
//
//  Created by Filip Nicklasson on 2023-11-06.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        VStack {
            HStack {
                
                Button(action: {
                    selectedTab = 0
                }, label: {
                    Text("A")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(doSomeColor(tabnuber: 0))
                })
                
                Button(action: {
                    selectedTab = 1
                }, label: {
                    Text("B")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(doSomeColor(tabnuber: 1))
                })
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("C")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(doSomeColor(tabnuber: 2))
                })
                
            }
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity)
            
            Spacer()
            
            if selectedTab == 0 {
                TabAView(fruit: "Kiwi")
            }
            
            if selectedTab == 1 {
                Text("Now is B chosen")
                    .font(.largeTitle)
            }
            
            if selectedTab == 2 {
                Text("Now is C chosen")
                    .font(.largeTitle)
            }
            
            Spacer()
        }
    }
    
    func doSomeColor(tabnuber : Int) -> Color {
        if tabnuber == selectedTab {
            return Color.cyan
        }
        
        return Color.gray
    }
}

#Preview {
    ContentView()
}
