//
//  ContentView.swift
//  NightWatch
//
//  Created by Khadija Daruwala on 2025-09-17.
//

import SwiftUI

let nightlyTasks = ["Check all windows", "Check all doors", "Check that the safe is loocked","Check the mailbox", "Inspect security cameras", "Clear ice from sidewalks", "Document \"strange and unusual\" occurences"]

let weeklyTasks = ["Check inside all vacant rooms", "Walk the perimeter of the property"]

let monthlyTasks = ["Test security alarms", "Test motion detectors", "Test smoke alarms"]

struct ContentView: View {
    var body: some View {
        List {
            
            Section {
                ForEach(nightlyTasks, id: \.self){ taskName in
                    Text(taskName)
                }
            } header: {
                HStack {
                    Image(systemName: "moon.stars")
                    Text("Nightly Tasks")
                }.headerStyle()
            }
            
            Section {
                ForEach(weeklyTasks, id: \.self){ taskName in
                    Text(taskName)
                }
            } header: {
                HStack{
                    Image(systemName: "sunset")
                    Text("Weekly Tasks")
                }.headerStyle()
            }
            
            Section {
                
                ForEach(monthlyTasks, id: \.self){ taskName in
                    Text(taskName)
                }
            } header: {
                HStack{
                    Image(systemName: "calendar")
                    Text("Monthly Tasks")
                }.headerStyle()
            }
        }.listStyle(GroupedListStyle())
    }
}

struct HeaderStyle: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.title3)
            .fontWeight(.heavy)
            .foregroundStyle(.yellow)
            .textCase(.uppercase)
    }
}

extension View{
    func headerStyle() -> some View {
        self.modifier(HeaderStyle())
    }
}

#Preview {
    ContentView()
}

#Preview("ContentView Landscape", traits: .landscapeRight, body: {
    ContentView()
})
