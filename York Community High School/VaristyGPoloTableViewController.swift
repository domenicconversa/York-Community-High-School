//
//  VaristyGPoloTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 3/31/17.
//  Copyright © 2017 Domenic Conversa. All rights reserved.
//

import UIKit

class VaristyGPoloTableViewController: UITableViewController {

    var date = ["03/07/2017", "03/09/2017", "03/14/2017", "03/16/2017", "03/17/2017", "03/18/2017", "03/21/2017", "03/23/2017", "04/08/2017", "04/10/2017", "04/15/2017", "04/17/2017", "04/20/2017", "04/24/2017", "04/25/2017", "04/28/2017", "04/29/2017", "05/02/2017", "05/06/2017", "05/11/2017", "05/12/2017", "05/13/2017", "05/18/2017", "05/19/2017", "05/20/2017"]
    var team = ["vs. Naperville North", "vs. Morton", "vs. Hinsdale Central", "vs. Mundelein", "@ Naperville Central invite", "@ Naperville Central Invite", "vs. Lyons Township", "vs. Oak Park - River Forest", "@ Deerfield", "@ St. Charles East", "vs. York Invite", "@ Hinsdale South", "vs. St. Charles North", "@ Neuqua Valley", "@ Hersey", "vs. York Round Robin", "vs. York Round Robin", "vs. Waubonsie Valley", "@ WSC Invite", "@ IHSA Sectional", "@ IHSA Sectional", "@ IHSA Sectional", "@ IHSA State", "@ IHSA State", "@ IHSA State"]
    var time = ["6:00 PM", "6:00 PM", "6:00 PM", "6:00 PM", "4:30 PM", "10:30 AM", "6:00 PM", "6:00 PM", "8:00 AM", "6:00 PM", "8:00 AM", "5:00 PM", "6:00 PM", "6:00 PM", "6:00 PM", "5:00 PM", "8:00 AM", "6:00 PM", "8:00 AM", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA"]
    var location = ["Pool", "Pool", "Pool", "Pool", "Naperville Central", "Naperville Central", "Pool", "Pool", "Deerfield High School", "St. Charles East", "Pool", "HInsdale South", "Pool", "Neuqua Valley", "Prospect High School", "Pool", "Pool", "Pool", "Lyons Township South Campus", "IHSA Sectional", "IHSA Sectional", "IHSA Sectional", "TBA", "TBA", "TBA"]
    var home = ["H", "H", "H", "H", "A", "A", "H", "H", "A", "A", "H", "A", "H", "A", "A", "H", "H", "H", "A", "A", "A", "A", "TBA", "TBA", "TBA"]
    
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
