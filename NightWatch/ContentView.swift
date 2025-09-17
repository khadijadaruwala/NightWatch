//
//  ContentView.swift
//  NightWatch
//
//  Created by Khadija Daruwala on 2025-09-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text("Nightly Tasks")
                Text("Check all windows")
                Text("Check all doors")
                Text("Check that the safe is loocked")
                Text("Check the mailbox")
                Text("Inspect security cameras")
                Text("Clear ice from sidewalks")
                Text("Document \"strange and unusual \" occurences")
                Text("Weekly Tasks")
                Text("Check inside all vacant rooms")
                Text("Walk the perimeter of the property")
                Text("Monthly Tasks")
                Text("Test security alarms")
                Text("Test motion detectors")
                Text("Test smoke alarms")
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

#Preview("ContentView Landscape", traits: .landscapeRight, body: {
    ContentView()
})
