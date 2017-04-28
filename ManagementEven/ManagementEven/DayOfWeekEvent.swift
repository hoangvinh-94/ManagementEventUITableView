//
//  DayOfWeekEvent.swift
//  ManagementEven
//
//  Created by healer on 4/27/17.
//  Copyright © 2017 Cntt08. All rights reserved.
//

import Foundation
import UIKit


// Contain attributes of Day in Week
class DayOfWeekEvent {
    
    var dayOfWeek : String
    var eventsInDay : [Event]
    
    
    init(dayofweek : String, events : [Event]) {
        dayOfWeek = dayofweek
        eventsInDay = events
    }
    
    func getEvents() -> [Event]{
        return eventsInDay
    }
    
    func setEvents(events : [Event]){
        eventsInDay = events
    }
    
    func getDayOfWeek() -> String{
        return dayOfWeek;
    }
    
    func setDayOfWeek(dayofweek : String)  {
        dayOfWeek = dayofweek
    }
   
}
