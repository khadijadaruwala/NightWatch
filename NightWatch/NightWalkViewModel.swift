//
//  NightWalkViewModel.swift
//  NightWatch
//
//  Created by Khadija Daruwala on 2025-09-22.
//

import Foundation
@Observable
class NightWalkViewModel{
    var nightlyTasks = [NightWatchTask(name:"Check all windows", isComplete: false),
                        NightWatchTask(name:"Check all doors", isComplete: false),
                        NightWatchTask(name:"Check that the safe is loocked", isComplete: false),
                        NightWatchTask(name:"Check the mailbox", isComplete: false),
                        NightWatchTask(name:"Inspect security cameras", isComplete: false),
                        NightWatchTask(name:"Clear ice from sidewalks", isComplete: false),
                        NightWatchTask(name:"Document \"strange and unusual\" occurences", isComplete: false)]
    
    var weeklyTasks = [NightWatchTask(name:"Check inside all vacant rooms", isComplete: false),
                       NightWatchTask(name:"Walk the perimeter of the property", isComplete: false)]
    
    var monthlyTasks = [NightWatchTask(name:"Test security alarms", isComplete: false),
                        NightWatchTask(name:"Test motion detectors", isComplete: false),
                        NightWatchTask(name:"Test smoke alarms", isComplete: false)]
}
