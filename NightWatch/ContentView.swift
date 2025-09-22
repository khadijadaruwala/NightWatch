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
        NavigationStack {
            List {
                
                Section {
                    ForEach(nightlyTasks, id: \.self){ taskName in
                        NavigationLink(taskName) {
                            DetailView(taskName: taskName)
                        }
                    }
                } header: {
                    TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")
                }
                
                Section {
                    ForEach(weeklyTasks, id: \.self){ taskName in
                        NavigationLink(taskName) {
                            DetailView(taskName: taskName)
                        }
                    }
                } header: {
                    TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")
                }
                
                Section {
                    
                    ForEach(monthlyTasks, id: \.self){ taskName in
                        NavigationLink(taskName) {
                            DetailView(taskName: taskName)
                        }
                    }
                } header: {
                    TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
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

struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    var body: some View {
        HStack {
            Image(systemName: symbolSystemName)
            Text(headerText)
        }.headerStyle()
    }
}


#Preview {
    ContentView()
}

#Preview("ContentView Landscape", traits: .landscapeRight, body: {
    ContentView()
})



