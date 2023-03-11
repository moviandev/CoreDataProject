//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Matheus Viana on 10/03/23.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
