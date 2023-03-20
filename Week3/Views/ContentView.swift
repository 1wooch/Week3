//
//  ContentView.swift
//  Week3
//
//  Created by Wonwoo Choi on 20/3/2023.
//

import SwiftUI



struct ContentView: View {
    @State var count = 1
    var body: some View {
        VStack {
           Text("Count = \(count)")
            Button("add count"){
                count+=1
                print(count)
            }
            CountView(ct:$count)
        }
        .padding()
    }
}

struct CountView:View{
    @Binding var ct:Int
    var body:some View{
        Text("CountView \(ct)")
    }
}

struct TextFieldView:View{
    @State var name = "WWC"
    var body: some View{
        VStack{
            Text("Name is \(name)")
            TextField("Input your name", text: $name)
        }.padding()
    }
}

struct ImageView:View{
    @State var model:[Scientist]

    var body:some View{
        NavigationView{
            VStack{
                TitleView(Title: "Greatest Sceintists", img: "person.3.fill")
                List{
                    ForEach(model) { person in
                        Text(person.name)
                    }
                }
            }.padding()
        }
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //TextFieldView()
        ImageView(model: testData)
    }
}
