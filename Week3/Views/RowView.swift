//
//  RowView.swift
//  Week3
//
//  Created by Wonwoo Choi on 20/3/2023.
//

import SwiftUI

struct RowView: View {
    @State var person:Scientist
    
    var body: some View {
        HStack{
            Image(person.img).frame(width: 30,height: 30).padding()
                .clipShape(Circle())
                .shadow(radius: 20)
            Spacer()
            Text(person.name)
        }.padding()
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(person:testData[0])
    }
}
