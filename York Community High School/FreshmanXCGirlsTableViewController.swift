//
//  FreshmanXCGirlsTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 8/14/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class FreshmanXCGirlsTableViewController: UITableViewController {

    var date = ["11/14/2016", "11/15/2016", "11/17/2016", "11/18/2016", "11/29/2016", "12/03/2016", "12/06/2016", "12/10/2016", "12/14/2016", "12/16/2016", "12/26/2016", "12/27/2016", "12/28/2016", "01/07/2017", "01/10/2017", "01/13/2017", "01/14/2017", "01/19/2017", "01/21/2017", "01/26/2017", "01/31/2017", "02/02/2017", "02/03/2017"]
    var team = ["@ York Thanksgiving Tournament", "@ York Thanksgiving Tournament", "@ York Thanksgiving Tournament", "@ York Thanksgiving Tournament", "@ LYONS TOWNSHIP", "@ PROVISO WEST", "vs. HINSDALE CENTRAL", "vs. GLENBARD WEST-Paint the Gym Purple", "vs. Glenbard East", "@ DOWNERS GROVE NORTH", "@ Nazareth invite", "@ Nazareth invite", "@ Nazareth invite", "@ HINSDALE CENTRAL", "vs. OAK PARK RIVER FOREST", "vs. St. Viator", "vs. PROVISO WEST", "@ Maine South", "vs. LYONS TOWNSHIP", "@ GLENBARD WEST", "@ OAK PARK RIVER FOREST", "vs. Benet Academy", "vs. DOWNERS GROVE NORTH"]
    var time = ["5:30 PM", "5:30 PM", "5:30 PM", "5:30 PM", "4:30 PM", "12:00 PM", "4:30 PM", "3:30 PM", "5:00 PM", "4:30 PM", "9:00 AM", "9:00 AM", "9:00 AM", "10:00 AM", "4:30 PM", "4:30 PM", "12:00 PM", "4:30 PM", "12:00 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM"]
    var location = ["Downers Grove South", "Downers Grove South", "Downers Grove South", "Downers Grove South", "LYONS TOWNSHIP", "PROVISO WEST", "Green/White Gym", "Field House", "South Gym", "DOWNERS GROVE NORTH", "Nazareth Academy", "Nazareth Academy", "Nazareth Academy", "HINSDALE CENTRAL", "South Gym", "South Gym", "Green/White Gym", "Maine South", "South Gym", "GLENBARD WEST", "OAK PARK RIVER FOREST", "South Gym", "Green/White Gym"]
    var home = ["A", "A", "A", "A", "A", "A", "H", "H", "H", "A", "A", "A", "A", "A", "H", "H", "H", "A", "H", "A", "A", "H", "H"]
    
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
