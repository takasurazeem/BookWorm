//
//  ContentView.swift
//  BookWorm
//
//  Created by Takasur Azeem on 08/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var rememberMe = false

    var body: some View {
        VStack {
            PushButton(title: "Remember Me", isOn: $rememberMe)
            Text(rememberMe ? "On" : "Off")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
