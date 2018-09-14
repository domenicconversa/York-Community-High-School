//
//  FallActivitiesTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 9/3/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class FallActivitiesTableViewController: UITableViewController {

    var date = ["4/12/17", "4/13/17", "4/14/17", "4/18/17", "4/19/17", "4/20/17", "4/22/17", "4/26/17", "4/27-29/17", "4/30/17", "5/1/17", "5/2/17", "5/4/17", "5/11/17", "5/16/17", "5/16/17", "5/17/17", "5/17/17", "5/18/17", "5/19/17", "5/19/17", "5/19/17", "5/21/17", "5/22/17", "5/23/17", "5/24/17"]
    var team = ["Student Late Arrival", "Student of the Month", "Non Attendance Day", "Scholarship Night", "Student Late Arrival", "Jazz Ensemble Concert", "Junior/Senior Prom", "Student Late Arrival", "Spring Musical - West Side Story", "Spring Musical - West Side Story", "Duke Decision Day", "Cadet/Concert Band Concert", "Student of the Month", "Spring Art Show", "Senior Final Exams", "Cadet/Concert Orchestra Concert", "Senior Final Exams", "Awards Night", "Symphony Ochestra Concert", "Senior Checkout", "Graduation Practice", "Senior BBQ", "Commencement Ceremony", "Final Exams", "Final Exams", "Final Exams"]
    var time = ["9:25 AM", "", "", "7:00 PM", "9:25 AM", "7:30 PM", "5:00 PM", "9:25 AM", "7:30 PM", "2:00 PM", "", "7:30 PM", "", "6:00 PM", "", "7:30 PM", "", "7:00 PM", "7:30 PM", "8:00 AM", "12:30 PM", "2:00 PM", "1:00 PM", "", "", ""]
    var location = ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    var home = ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add a background view to the table view
        let backgroundImage = UIImage(named: "York High School 2.jpg")
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
        
        // center and scale background image
        imageView.contentMode = .scaleAspectFill
        
        // no lines where there aren't cells
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = imageView.bounds
        imageView.addSubview(blurView)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return team.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "footballCell", for: indexPath) as! FootballTableViewCell
        
        // Configure the cell...
        
        cell.date.text = date[(indexPath as NSIndexPath).row]
        cell.team.text = team[(indexPath as NSIndexPath).row]
        cell.time.text = time[(indexPath as NSIndexPath).row]
        cell.location.text = location[(indexPath as NSIndexPath).row]
        cell.home.text = home[(indexPath as NSIndexPath).row]
        
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
