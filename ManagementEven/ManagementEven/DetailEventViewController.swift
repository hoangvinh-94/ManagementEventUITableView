//
//  DetailEventViewController.swift
//  ManagementEven
//
//  Created by healer on 4/27/17.
//  Copyright © 2017 Cntt08. All rights reserved.
//

import UIKit

class DetailEventViewController: UIViewController {
    
    var event : Event?
    var timeEvent : String?
    
    @IBOutlet var titleEvent: UILabel!
    @IBOutlet var time: UITextField!
    @IBOutlet var content: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleEvent.text =  event?.eventName
        time.text = timeEvent
        content.text = event?.eventContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
