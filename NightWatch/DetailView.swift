//
//  DetailView.swift
//  NightWatch
//
//  Created by Khadija Daruwala on 2025-09-22.
//

import SwiftUI

struct DetailView: View {
    let taskName: String
    var body: some View {
        VStack {
            Text(taskName)
            Text("Placeholder for task description")
            Text("Mark complete button")
        }
    }
}

#Preview {
    DetailView(taskName: "Test")
}
