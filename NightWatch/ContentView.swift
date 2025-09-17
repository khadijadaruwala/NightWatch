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
                Text("\(Image(systemName: "moon.stars")) Nightly Tasks").font(.title3).fontWeight(.heavy).foregroundStyle(.yellow).textCase(.uppercase).underline()
                Text("Check all windows")
                Text("Check all doors")
                Text("Check that the safe is loocked")
                Text("Check the mailbox")
                Text("Inspect security cameras")
                Text("Clear ice from sidewalks")
                Text("Document \"strange and unusual \" occurences")
                Text("\(Image(systemName: "sunset")) Weekly Tasks")
                    .font(.title3).fontWeight(.heavy).foregroundStyle(.yellow).textCase(.uppercase).underline().padding(.top)
                Text("Check inside all vacant rooms")
                Text("Walk the perimeter of the property")
                Text("\(Image(systemName: "calendar")) Monthly Tasks")
                    .font(.title3).font(.title3).fontWeight(.heavy).foregroundStyle(.yellow).textCase(.uppercase).underline().padding(.top)
                Text("Test security alarms")
                Text("Test motion detectors")
                Text("Test smoke alarms")
                Spacer()
            }.foregroundStyle(.gray)
            Spacer()
        }.padding(.all)
    }
}


#Preview {
    ContentView()
}

#Preview("ContentView Landscape", traits: .landscapeRight, body: {
    ContentView()
})
