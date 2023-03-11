//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Matheus Viana on 10/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            // when using \.self we saying the whole object is identifiable
            ForEach([2,4,6,8,10], id: \.self) {
                Text("\($0) is even")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
