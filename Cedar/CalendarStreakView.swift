//
//  CalendarStreakView.swift
//  Cedar
//
//  Created by zach wick on 8/10/20.
//  Copyright © 2020 Patrick Mick. All rights reserved.
//

import SwiftUI
import Foundation
import ElegantCalendar

struct CalendarStreakView: View {
    
    // Start & End date should be configured based on your needs.
    static let startDate = Date().startOfMonth
    static let endDate = Date().endOfMonth
    
    @ObservedObject var calendarManager = MonthlyCalendarManager(
        configuration: CalendarConfiguration(startDate: startDate,
                                             endDate: endDate),
        initialMonth: startDate)
    
    var body: some View {
        MonthlyCalendarView(calendarManager: calendarManager)
            .theme(.kiwiGreen)
    }
    
}
