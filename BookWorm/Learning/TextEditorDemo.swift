//
//  TextEditorDemo.swift
//  BookWorm
//
//  Created by Takasur Azeem on 08/05/2022.
//

import SwiftUI

struct TextEditorDemo: View {
    
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationView {
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

struct TextEditorDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorDemo()
    }
}
