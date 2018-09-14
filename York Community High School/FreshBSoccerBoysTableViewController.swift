//
//  FreshBSoccerBoysTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 8/23/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class FreshBSoccerBoysTableViewController: UITableViewController {

    var date = ["03/27/2017", "03/28/2017", "03/30/2017", "04/01/2017", "04/06/2017", "04/11/2017", "04/12/2017", "04/15/2017", "04/17/2017", "04/19/2017", "04/22/2017", "04/24/2017", "04/25/2017", "04/26/2017", "04/29/2017", "05/01/2017", "05/03/2017", "05/05/2017", "05/06/2017", "05/09/2017", "05/10/2017", "05/12/2017", "05/13/2017", "05/16/2017", "05/17/2017"]
    var team = ["@ Marist", "vs. Libertyville", "@ Waubonsie Valley - Cancelled", "vs. Glenbard North", "@ Conant", "vs. Andrew", "@ Andrew", "@ Riverside - Brookfield (DH)", "@ PROVISO WEST", "@ LYONS TOWNSHIP", "vs. Bartlett - DH", "@ DOWNERS GROVE NORTH", "vs. Resurrection", "vs. GLENBARD WEST", "@ Willowbrook (DH)", "vs. OAK PARK RIVER FOREST", "vs. PROVISO WEST", "vs. LYONS TOWNSHIP", "vs. Glenabrd South (DH)", "vs. Marist", "vs. DOWNERS GROVE NORTH", "@ GLENBARD WEST", "vs. Maine South (DH)", "vs. DGS", "@ OAK PARK RIVER FOREST"]
    var time = ["4:30 PM", "3:00 PM", "10:00 AM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM"]
    var location = ["Marist High School", "Bryan MS Field", "Waubonsie Valley", "Bryan MS Field", "Conant", "Bryan MS Field", "Andrew", "Vetrans Park", "PROVISO WEST", "LYONS TOWNSHIP", "Bryan MS Field", "Doerhoefer Park", "Bryan MS Field", "Bryan MS Field", "Willowbrook (DH)", "Bryan MS Field", "Bryan MS Field", "Bryan MS Field", "Bryan MS Field", "Bryan MS Field", "Bryan MS Field", "Ackerman Park", "Bryan MS Field", "Bryan MS Field", "OAK PARK RIVER FOREST"]
    var home = ["A", "H", "A", "H", "A", "H", "A", "A", "A", "A", "H", "A", "H", "H", "A", "H", "H", "H", "H", "H", "H", "A", "H", "H", "A"]
    
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
