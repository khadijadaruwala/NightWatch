//
//  NightWatckTask.swift
//  NightWatch
//
//  Created by Khadija Daruwala on 2025-09-22.
//

import Foundation

struct NightWatchTask: Identifiable{
    let id = UUID()
    let name: String
    var isComplete: Bool
    var isCompletedData: Date?
}
