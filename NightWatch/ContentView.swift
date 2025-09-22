//
//  ContentView.swift
//  NightWatch
//
//  Created by Khadija Daruwala on 2025-09-17.
//

import SwiftUI

struct ContentView: View {
   @Bindable var nightWalkViewModel: NightWalkViewModel
    var body: some View {
        NavigationStack {
            List {
                
                Section {
                    ForEach($nightWalkViewModel.nightlyTasks){ task in
                        NavigationLink {
                            DetailView(task: task)
                        } label: {
                            TaskRow(task: task.wrappedValue)
                        }
                    }
                } header: {
                    TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")
                }
                
                Section {
                    ForEach($nightWalkViewModel.weeklyTasks){ task in
                        NavigationLink {
                            DetailView(task: task)
                        } label: {
                            TaskRow(task: task.wrappedValue)
                        }
                    }
                } header: {
                    TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")
                }
                
                Section {
                    
                    ForEach($nightWalkViewModel.monthlyTasks){ task in
                        NavigationLink {
                            DetailView(task: task)
                        } label: {
                            TaskRow(task: task.wrappedValue)
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

struct TaskRow: View {
    let task: NightWatchTask
    
    var body: some View {
        if task.isComplete{
            HStack{
                Image(systemName: "checkmark.square")
                Text(task.name)
                    .foregroundStyle(.gray)
                    .strikethrough()
            }
        } else {
            HStack{
                Image(systemName: "square")
                Text(task.name)
            }
        }
        
    }
}


#Preview {
    ContentView(nightWalkViewModel: NightWalkViewModel())
}

#Preview("ContentView Landscape", traits: .landscapeRight, body: {
    ContentView(nightWalkViewModel: NightWalkViewModel())
})
