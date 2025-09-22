//
//  DetailView.swift
//  NightWatch
//
//  Created by Khadija Daruwala on 2025-09-22.
//

import SwiftUI

struct DetailView: View {
    @Binding var task: NightWatchTask
    
    var body: some View {
        VStack {
            Text(task.name)
            Button {
                task.isComplete = true
            } label: {
               Text("Mark as complete")
            }

        }
    }
}

#Preview {
    DetailView(task: .constant(NightWatchTask(name: "Testing task", isComplete: false)))
}
