//
//  DataController.swift
//  BookWorm
//
//  Created by Takasur Azeem on 08/05/2022.
//

import CoreData

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
    
}
