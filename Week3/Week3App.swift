//
//  Week3App.swift
//  Week3
//
//  Created by Wonwoo Choi on 20/3/2023.
//

import SwiftUI

@main
struct Week3App: App {
    @State var model = testData
    
    var body: some Scene {
        WindowGroup {
            //ContentView()
            ImageView(model: model)
        }
    }
}
