//
//  ContentView.swift
//  Multiscreen
//
//  Created by Sharan Mohanadoss on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("This is home screen")
                .tabItem {
                    Text("Home")
                    Image(systemName: "house.fill")
                  }
            Text("This is about us screen")
                .tabItem {
                    Text("Page 2")
                    Image(systemName: "person.fill")
                }
            
                }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
