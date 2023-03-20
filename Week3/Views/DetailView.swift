//
//  DetailView.swift
//  Week3
//
//  Created by Wonwoo Choi on 20/3/2023.
//

import SwiftUI

struct DetailView: View {
    @Binding var person:Scientist
    @State var displayName:String=""
    var body: some View {
        VStack{
            TitleView(Title: person.name, img: "person.fill").padding(.vertical)
            Text("You can update the name")
            TextField("Input Name",text: $displayName)
            Button("Cancel"){
                displayName=person.name
            }
            Spacer()
        }.onAppear{
            displayName=person.name
            
            
        }.onDisappear{
            person.name=displayName
        }
        }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person:.constant(testData[0]))
    }
}
