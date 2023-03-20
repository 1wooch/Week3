//
//  DataModel.swift
//  Week3
//
//  Created by Wonwoo Choi on 20/3/2023.
//

import Foundation

struct Scientist:Identifiable{
    var id=UUID()
    var name:String
    var img:String
}

var  testData = [
    Scientist(name: "Newton", img: "newton"),
    Scientist(name: "Einstein", img: "einstein")
]

func getScientistName(_ idx:Int)->String{
    return testData[idx].name
}
 
