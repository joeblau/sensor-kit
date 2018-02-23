//
//  TimeModality.swift
//  SensorKit
//
//  Created by Joseph Blau on 1/9/17.
//  Copyright © 2017 Joe Blau. All rights reserved.
//

import Foundation

public class TimeModality {
    public private(set) var stimulus = TimeModalityModel(era: Calendar.todaysComponents.era,
                                                         year: Calendar.todaysComponents.year,
                                                         month: Calendar.todaysComponents.month,
                                                         day: Calendar.todaysComponents.day,
                                                         hour: Calendar.todaysComponents.hour,
                                                         minute: Calendar.todaysComponents.minute,
                                                         second: Calendar.todaysComponents.second,
                                                         nanosecond: Calendar.todaysComponents.nanosecond,
                                                         weekday: Calendar.todaysComponents.weekday,
                                                         weekdayOrdinal: Calendar.todaysComponents.weekdayOrdinal,
                                                         quarter: Calendar.todaysComponents.quarter,
                                                         weekOfMonth: Calendar.todaysComponents.weekOfMonth,
                                                         weekOfYear: Calendar.todaysComponents.weekOfYear,
                                                         yearForWeekOfYear: Calendar.todaysComponents.yearForWeekOfYear,
                                                         leapMonth: Calendar.todaysComponents.isLeapMonth ?? false,
                                                         secondsFromGMT: Calendar.todaysComponents.timeZone?.secondsFromGMT())
}

extension Calendar {
    static var todaysComponents: DateComponents {
        let components: Set<Component> = [.calendar,
                                          .day,
                                          .era,
                                          .hour,
                                          .minute,
                                          .month,
                                          .nanosecond,
                                          .quarter,
                                          .second,
                                          .timeZone,
                                          .weekday,
                                          .weekdayOrdinal,
                                          .weekOfMonth,
                                          .weekOfYear,
                                          .year,
                                          .yearForWeekOfYear]
        return self.current.dateComponents(components, from: Date())
    }
}
