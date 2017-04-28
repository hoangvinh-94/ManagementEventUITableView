//
//  EventTableViewController.swift
//  ManagementEven
//
//  Created by healer on 4/27/17.
//  Copyright © 2017 Cntt08. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {

    var DayOfWeek : [DayOfWeekEvent] = [
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        DayOfWeek = dataMain()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return DayOfWeek.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DayOfWeek[section].eventsInDay.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayEvent", for: indexPath) as! EventTableViewCell
     
     // Configure the cell...
     
        let CellEvents = DayOfWeek[indexPath.section].eventsInDay[indexPath.row]
        cell.textLabel?.text = CellEvents.eventName
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return DayOfWeek[section].dayOfWeek
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            DayOfWeek[indexPath.section].eventsInDay.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        // get event dragging
        let events = DayOfWeek[fromIndexPath.section].eventsInDay[fromIndexPath.row]
        // remove event dragging
        DayOfWeek[fromIndexPath.section].eventsInDay.remove(at: fromIndexPath.row)
        // insert event into new possition
        DayOfWeek[to.section].eventsInDay.insert(events, at: to.row)

    }
    

    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    // to Details Screen
    /*
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier:
            "Details", sender: DayOfWeek[indexPath.section].eventsInDay[indexPath.row])
     }
*/
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "Details"){
            if let index = self.tableView.indexPathForSelectedRow{
            let eventDetail = segue.destination as! DetailEventViewController
            eventDetail.event = DayOfWeek[index.section].eventsInDay[index.row]
            eventDetail.timeEvent = DayOfWeek[(index.section)].dayOfWeek
         
            }
        }
        
            
        }
       // get Data
    func dataMain() -> [DayOfWeekEvent]{
        
        
        // Declare availables and events for Monday
        var Mon : DayOfWeekEvent
        var MonEvents = [Event]()
        MonEvents.append(Event(name : "Event 1 for Monday", content : "Content for Event 1 of Monday"))
        MonEvents.append(Event(name : "Event 2 for Monday", content : "Content for Event 2 of Monday"))
        MonEvents.append(Event(name : "Event 3 for Monday", content : "Content for Event 3 of Monday"))
        Mon = DayOfWeekEvent(dayofweek : "Monday", events : MonEvents)
        
        // Declare availables and events for Tuesday
        var Tue : DayOfWeekEvent
        var TueEvents = [Event]()
        TueEvents.append(Event(name : "Event for Tuesday 1", content : "Content for Event 1 of Tuesday"))
        TueEvents.append(Event(name : "Event for Tuesday 2", content : "Content for Event 2 of Tuesday"))
        Tue = DayOfWeekEvent(dayofweek : "Tuesday", events : TueEvents)
        
        // Declare availables and events for Wednesday
        var Wed : DayOfWeekEvent
        var WedEvents = [Event]()
        WedEvents.append(Event(name : "Event for Wednesday 1", content : "Content for Event 1 of Wednesday"))
        WedEvents.append(Event(name : "Event for Wednesday 2", content : "Content for Event 2 of Wednesday"))
        WedEvents.append(Event(name : "Event for Wednesday 3", content : "Content for Event 3 of Wednesday"))
        WedEvents.append(Event(name : "Event for Wednesday 4", content : "Content for Event 4 of Wednesday"))
        WedEvents.append(Event(name : "Event for Wednesday 5", content : "Content for Event 5 of Wednesday"))
        Wed = DayOfWeekEvent(dayofweek : "Wednesday", events : WedEvents)
        
        // Declare availables and events for Thursday
        var Thu : DayOfWeekEvent
        var ThuEvents = [Event]()
        ThuEvents.append(Event(name : "Event for Thursday 1", content : "Content for Event 1 of Thursday"))
        ThuEvents.append(Event(name : "Event for Thursday 2", content : "Content for Event 2 of Thursday"))
        
        Thu = DayOfWeekEvent(dayofweek : "Thursday", events : ThuEvents)
        
        // Declare availables and events for Friday
        var Fri : DayOfWeekEvent
        var FriEvents = [Event]()
        FriEvents.append(Event(name : "Event for Friday 1", content : "Content for Event 1 of Friday"))
        FriEvents.append(Event(name : "Event for Friday 2", content : "Content for Event 2 of Friday"))
        FriEvents.append(Event(name : "Event for Friday 3", content : "Content for Event 3 of Friday"))
        
        
        FriEvents.append(Event(name : "Event for Friday 4", content : "Content for Event 4 of Friday"))
        
        FriEvents.append(Event(name : "Event for Friday 5", content : "Content for Event 5 of Friday"))
        
        FriEvents.append(Event(name : "Event for Friday 6", content : "Content for Event 6 of Friday"))
        Fri = DayOfWeekEvent(dayofweek : "Friday", events : WedEvents)
        
        
        // Declare availables and events for Saturday
        var Sat : DayOfWeekEvent
        var SatEvents = [Event]()
        SatEvents.append(Event(name : "Event for Saturday 1", content : "Content for Event 1 of Saturday"))
        SatEvents.append(Event(name : "Event for Saturday 2", content : "Content for Event 2 of Saturday"))
        SatEvents.append(Event(name : "Event for Saturday 3", content : "Content for Event 3 of Saturday"))
        
        
        SatEvents.append(Event(name : "Event for Saturday 4", content : "Content for Event 4 of Saturday"))
        
        
        Sat = DayOfWeekEvent(dayofweek : "Saturday", events : SatEvents)
        
        
        // Declare availables and events for Sunday
        var Sun : DayOfWeekEvent
        var SunEvents = [Event]()
        SunEvents.append(Event(name : "Event for Sunday 1", content : "Content for Event 1 of Sunday"))
        SunEvents.append(Event(name : "Event for Sunday 2", content : "Content for Event 2 of Sunday"))
        SunEvents.append(Event(name : "Event for Sunday 3", content : "Content for Event 3 of Sunday"))
        
        
        SunEvents.append(Event(name : "Event for Sunday 4", content : "Content for Event 4 of Sunday"))
        
        SunEvents.append(Event(name : "Event for Sunday 5", content : "Content for Event 5 of Sunday"))
        
        SunEvents.append(Event(name : "Event for Sunday 6", content : "Content for Event 6 of Sunday"))
        SunEvents.append(Event(name : "Event for Sunday 7", content : "Content for Event 7 of Sunday"))
        
        SunEvents.append(Event(name : "Event for Sunday 8", content : "Content for Event 8 of Sunday"))
        Sun = DayOfWeekEvent(dayofweek : "Sunday", events : SunEvents)

        
        // Return Array type DayOfWeekEvent
        let WeekEvent = [Mon,Tue,Wed,Thu,Fri,Sat,Sun]
        return WeekEvent
    }
}
