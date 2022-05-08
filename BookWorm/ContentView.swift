//
//  ContentView.swift
//  BookWorm
//
//  Created by Takasur Azeem on 08/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rememberMe = false
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        VStack {
            List(students) { student in
                Text(student.name ?? "Unkown")
            }
            Button("Add") {
                let names = ["Takasur", "Ahmed", "Ali", "Waqas"]
                let chosenName = names.randomElement()!
                
                let student = Student(context: moc)
                student.id = UUID()
                student.name = chosenName
                
                try? moc.save()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
