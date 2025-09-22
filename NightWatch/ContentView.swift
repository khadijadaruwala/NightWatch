//
//  ContentView.swift
//  NightWatch
//
//  Created by Khadija Daruwala on 2025-09-17.
//

import SwiftUI

struct ContentView: View {
    @Bindable var nightWalkViewModel: NightWalkViewModel
    @State private var focusModeOn: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach($nightWalkViewModel.nightlyTasks){ task in
                        if !focusModeOn || (focusModeOn && !task.wrappedValue.isComplete) {
                            NavigationLink {
                                DetailView(task: task)
                            } label: {
                                TaskRow(task: task.wrappedValue)
                            }
                        }
                    }
                    .onDelete { indexSet in
                        nightWalkViewModel.nightlyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove { indices, newOffset in
                        nightWalkViewModel.nightlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    }
                } header: {
                    TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")
                }
                
                Section {
                    ForEach($nightWalkViewModel.weeklyTasks){ task in
                        if !focusModeOn || (focusModeOn && !task.wrappedValue.isComplete) {
                            NavigationLink {
                                DetailView(task: task)
                            } label: {
                                TaskRow(task: task.wrappedValue)
                            }
                        }
                    }
                    .onDelete { indexSet in
                        nightWalkViewModel.weeklyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove { indices, newOffset in
                        nightWalkViewModel.weeklyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    }
                } header: {
                    TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")
                }
                
                Section {
                    
                    ForEach($nightWalkViewModel.monthlyTasks){ task in
                        if !focusModeOn || (focusModeOn && !task.wrappedValue.isComplete) {
                            NavigationLink {
                                DetailView(task: task)
                            } label: {
                                TaskRow(task: task.wrappedValue)
                            }
                        }
                    }
                    .onDelete { indexSet in
                        nightWalkViewModel.monthlyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove { indices, newOffset in
                        nightWalkViewModel.monthlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    }
                } header: {
                    TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    
                    Toggle(isOn: $focusModeOn) {
                        Text("Focus Mode")
                    }
                    .toggleStyle(.switch)
                    .frame(width: 175)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    EditButton()
                }
            }
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
