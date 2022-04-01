//
//  ContentView.swift
//  Demo
//
//  Created by Sharan Mohanadoss on 2/11/22.
//

import SwiftUI

//Array of Image names

let imageArray = [
"rectangle",
"triangle",
"circle",
"hexangon",
"oval",
"capsele",
"seal",
"diamond",
"rohmbus",
]

struct ContentView: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(0..<imageArray.count(index in)
                        let iteam = imageArray[index]
                        Navagation.ink {
                    iteamDetails(iteam:iteam)
                }
                        label; {
                    VStack{
                        ForEach(0..<imageArray.count){index in
                            let iteam = imageArray(index)}
                }
            }
            
            
        }
        VStack{
            ForEach(0..<imageArray.count){index in
                let iteam = imageArray(index)}
            HStack{
            
struct ContentView: View {
    var body: some View {
        HStack{
            Image(systemName:"circle")
                .resizable()
                .frame(width:100, height:100)
            Image(systemName: "rectangle")
                .resizable()
                .frame(width:100, height:100)
            image(sya)
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
