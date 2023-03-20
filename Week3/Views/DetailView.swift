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
            Image(person.img).resizable()
                .scaledToFit()
                .cornerRadius(20)
                .shadow(color:.black,radius: 20,x:10,y:10)
            Spacer()
        }.onAppear{
            displayName=person.name
            
            
        }.onDisappear{
            person.name=displayName
        }.padding()
        }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person:.constant(testData[0]))
    }
}
