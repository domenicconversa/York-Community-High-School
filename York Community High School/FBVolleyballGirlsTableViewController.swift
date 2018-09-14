//
//  FBVolleyballGirlsTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 8/27/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class FBVolleyballGirlsTableViewController: UITableViewController {

    var date = ["03/22/2017", "03/24/2017", "03/28/2017", "03/29/2017", "03/30/2017", "04/05/2017", "04/07/2017", "04/08/2017", "04/10/2017", "04/11/2017", "04/12/2017", "04/13/2017", "04/20/2017", "04/22/2017", "04/24/2017", "04/25/2017", "04/26/2017", "04/27/2017", "04/29/2017", "05/01/2017", "05/02/2017", "05/03/2017", "05/04/2017", "05/08/2017", "05/09/2017", "05/11/2017", "05/18/2017"]
    var team = ["@ Naperville Central-Cancelled", "@ Waubonsie Valley", "@ Wheaton Warrenville South", "@ Benet", "vs. Maine South - Cancelled", "vs. Elk Grove", "vs. Elmwood Park", "vs. ADDISON TRAIL", "vs. GLENBARD WEST", "@ GLENBARD WEST", "@ Wheaton North", "vs. GLENBARD WEST", "vs. Immaculate Conception", "vs. DOWNERS GROVE SOUTH", "vs. Oak Park - River Forest", "@ OAK PARK RIVER FOREST", "@ Immaculate Conception", "@ OAK PARK RIVER FOREST", "vs. Willowbrook", "@ HINSDALE CENTRAL", "vs. HINSDALE CENTRAL", "@ Naperville Central-", "@ HINSDALE CENTRAL", "vs. LYONS TOWNSHIP", "@ LYONS TOWNSHIP", "vs. LYONS TOWNSHIP", "vs. St. Patrick"]
    var time = ["4:30 PM", "4:30 PM", "3:00 PM", "1:00 PM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "12:00 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM"]
    var location = ["Naperville Central", "Waubonsie Valley", "Wheaton Warrenville South", "Benet", "Churchville MS", "Churchville MS", "Churchville MS", "Churchville", "Churchville", "Glenbard West - Village Green", "Wheaton North", "Churchville", "Churchville MS", "Churchville", "Churchville MS", "OPRF - Lindberg Park", "Plunkett Park", "OPRF - Lindberg Park", "Churchville MS", "HINSDALE CENTRAL", "Churchville", "Naperville Central", "HINSDALE CENTRAL", "Churchville", "LYONS TOWNSHIP", "Churchville Middle School", "Churchville MS"]
    var home = ["A", "A", "A", "A", "H", "H", "H", "H", "H", "A", "A", "H", "H", "H", "H", "A", "A", "A", "H", "A", "H", "A", "A", "H", "A", "H", "H"]
    
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
