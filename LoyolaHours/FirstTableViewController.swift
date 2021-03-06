//
//  FirstTableViewController.swift
//  LoyolaHours
//
//  Created by Sarah Mehmedi on 12/1/15.
//  Copyright © 2015 Sarah Mehmedi. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController{
    
    
    var FirstTableArray = [String]()
    
    var SecondArray = [SecondTable]()
    
    var ThirdArray = [ThirdView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FirstTableArray = ["Damen Dining", "Damen Food Court", "de Nobili Dining","Engrained Cafe","Halas","Information Commons", "IC Cafe aka Connections Cafe","Mundelein Cafe aka Center Stage","Simpson Dining"]
        
        
        SecondArray =
            [SecondTable(SecondTitle: ["Break","Fall","Spring"]),
                SecondTable(SecondTitle: ["Break","Fall","Spring"]),
                SecondTable(SecondTitle: ["Break","Fall","Spring"]),
                SecondTable(SecondTitle: ["Break","Fall","Spring"]),
                SecondTable(SecondTitle: ["Break","Fall","Spring"]),
                SecondTable(SecondTitle: ["Break","Fall","Spring"]),
                SecondTable(SecondTitle: ["Break","Fall","Spring"]),
                SecondTable(SecondTitle: ["Break","Fall","Spring"]),
                SecondTable(SecondTitle: ["Break","Fall","Spring"]),
                SecondTable(SecondTitle: ["Break","Fall","Spring"])]
        
        ThirdArray = [ThirdView(ThirdViewArray: ["asdkljf","Phone: (773) 508-8708\n\nMon-Thurs: 7:30am - 9pm\nFriday: 7:30am - 8pm\nSaturday: 10am - 8pm\nSunday: 10am - 9pm\n","Phone: (773) 508-8708\n\nMon-Thurs: 7:30am - 9pm\nFriday: 7:30am - 8pm\nSaturday: 10am - 8pm\nSunday: 10am - 9pm\n"]),
            ThirdView(ThirdViewArray: ["asdkljf","asdfasd","asdfas"]),
            ThirdView(ThirdViewArray: ["asdkljf","asdfasd","asdfas"]),
            ThirdView(ThirdViewArray: ["asdkljf","asdfasd","asdfas"]),
            ThirdView(ThirdViewArray: ["asdkljf","asdfasd","asdfas"]),
            ThirdView(ThirdViewArray: ["asdkljf","asdfasd","asdfas"]),
            ThirdView(ThirdViewArray: ["asdkljf","asdfasd","asdfas"]),
            ThirdView(ThirdViewArray: ["asdkljf","Phone: (773) 508-3482\n\nMonday-Friday: 7am-6pm\nSaturday-Sunday:CLOSED","Phone: (773) 508-3482\n\nMonday-Friday: 7am-6pm\nSaturday-Sunday:CLOSED"]),
            ThirdView(ThirdViewArray: ["asdkljf","Monday-Friday: 7am-6pm\nSaturday-Sunday:CLOSED","asdfas"]),
            ThirdView(ThirdViewArray: ["asdkljf"])]
        
        
        
        
        
//        FirstTableArray = ["First", "Second", "Third","Fourth"]
//        
//        
//        SecondArray =
//            [SecondTable(SecondTitle: ["FirstFirst","SecondFirst","ThirdFirst", "FourthFirst"]),
//                SecondTable(SecondTitle: ["FirstSecond","SecondSecond","ThirdSecond"]),
//                SecondTable(SecondTitle: ["FirstThird","SecondThird","ThirdThird"]),
//                SecondTable(SecondTitle: ["FirstFourth"])]
//        
//        ThirdArray = [ThirdView(ThirdViewArray: ["asdkljf","asdfasd","asdfas"]),
//            ThirdView(ThirdViewArray: ["asdkljf","asdfasd","asdfas"]),
//            ThirdView(ThirdViewArray: ["asdkljf","asdfasd","asdfas"]),
//            ThirdView(ThirdViewArray: ["asdkljf"])]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstTableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        
        Cell.textLabel?.text = FirstTableArray[indexPath.row]
        
        return Cell
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let DestViewController = segue.destinationViewController as! SecondTableViewController
        
        var SecondTableArrayTwo : SecondTable
        
        SecondTableArrayTwo = SecondArray[indexPath.row]
        
        DestViewController.SecondArray = SecondTableArrayTwo.SecondTitle
        
        
        var ThirdAnswerArray : ThirdView
        
        ThirdAnswerArray = ThirdArray[indexPath.row]
        
        DestViewController.SecondAnswerArray = ThirdAnswerArray.ThirdViewArray
        
    }
    
    
    
    
    
    
    
}

