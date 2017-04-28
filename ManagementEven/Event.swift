//
//  Event.swift
//  ManagementEven
//
//  Created by healer on 4/26/17.
//  Copyright © 2017 Cntt08. All rights reserved.
//

import Foundation
import UIKit


// Class contain attributes of event
class Event{
    var eventName: String
    var eventContent: String
    init(name: String, content: String) {
        eventName = name
        eventContent = content
    }
    func getEventName() -> String{
        return eventName
    }
    
    func setEventName(eventContent : String){
        self.eventContent = eventContent
    }
    
    func getEventContent() -> String{
        return eventContent;
    }
    
    func setEventName(eventName: String)  {
        self.eventName = eventName
    }

}
