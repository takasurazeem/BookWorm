//
//  BookWormApp.swift
//  BookWorm
//
//  Created by Takasur Azeem on 08/05/2022.
//

import SwiftUI

@main
struct BookWormApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
