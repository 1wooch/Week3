//
//  ContentView.swift
//  Week3
//
//  Created by Wonwoo Choi on 20/3/2023.
//

import SwiftUI

var count = 1


struct ContentView: View {
    var body: some View {
        VStack {
           Text("Count = \(count)")
            Button("add count"){
                count+=1
                print(count)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
