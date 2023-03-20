//
//  TitleView.swift
//  Week3
//
//  Created by Wonwoo Choi on 20/3/2023.
//

import SwiftUI

struct TitleView: View {
    @State var Title:String
    @State var img:String
    
    var body: some View {
        HStack{
            
            Text(Title).font(.title).foregroundColor(.white).bold()
            Spacer()
            Image(systemName: img).foregroundColor(.yellow).imageScale(.large
            )
        }.background(.blue)
            
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(Title: "Title View", img: "star")
    }
}
