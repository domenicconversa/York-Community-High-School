//
//  FAVolleyballGirlsTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 8/27/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class FAVolleyballGirlsTableViewController: UITableViewController {

    var date = ["03/21/2017", "03/22/2017", "03/23/2017", "03/24/2017", "03/27/2017", "03/28/2017", "03/29/2017", "03/30/2017", "04/01/2017", "04/03/2017", "04/04/2017", "04/05/2017", "04/06/2017", "04/08/2017", "04/10/2017", "04/11/2017", "04/12/2017", "04/13/2017", "04/22/2017", "04/24/2017", "04/25/2017", "04/27/2017", "05/01/2017", "05/02/2017", "05/03/2017", "05/04/2017", "05/06/2017", "05/08/2017", "05/09/2017", "05/11/2017", "05/13/2017", "05/17/2017"]
    var team = ["vs. Glenbard East", "vs. Naperville Central-Cancelled", "@ Hoffman Estates", "vs. Waubonsie Valley", "vs. Rolling Meadows-Cancelled", "@ Wheaton Warrenville South", "@ Benet", "@ Maine South - Cancelled", "vs. Rolling Meadows", "vs. DOWNERS GROVE NORTH", "@ DOWNERS GROVE NORTH", "@ Elk Grove", "vs. DOWNERS GROVE NORTH", "@ ADDISON TRAIL", "@ GLENBARD WEST", "vs. GLENBARD WEST", "vs. Wheaton North", "@ GLENBARD WEST", "@ DOWNERS GROVE SOUTH", "@ OAK PARK RIVER FOREST", "vs. OAK PARK RIVER FOREST", "vs. OAK PARK RIVER FOREST", "vs. HINSDALE CENTRAL", "@ HINSDALE CENTRAL", "vs. Naperville Central-", "vs. HINSDALE CENTRAL", "@ LEYDEN", "@ LYONS TOWNSHIP", "vs. LYONS TOWNSHIP", "@ LYONS TOWNSHIP", "vs. MORTON", "@ HINSDALE SOUTH"]
    var time = ["4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "11:00 AM", "1:00 PM", "11:00 AM", "4:30 PM", "3:00 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM"]
    var location = ["Churchville MS", "Churchville MS", "Hoffman Estates", "Churchville MS", "Churchville MS", "Wheaton Warrenville South", "Benet", "Maine South", "York Baseball Field", "Churchville", "Memorial Park", "Elk Grove", "Churchville MS", "ADDISON TRAIL", "GLENBARD WEST", "Churhville", "Churchville MS", "Village Green", "Downers Grove South", "OPRF - Lindberg Park", "Churchville", "Churchville", "Churchville", "HINSDALE CENTRAL", "Churchville MS", "Churchville", "Leyden", "LYONS TOWNSHIP SC", "Churchville Middle School", "LYONS TOWNSHIP SC", "Churchville", "HInsdale south - Southeast Baseball field"]
    var home = ["H", "H", "A", "H", "H", "A", "A", "A", "H", "H", "A", "A", "H", "A", "A", "H", "H", "A", "A", "A", "H", "H", "H", "A", "H", "H", "A", "A", "H", "A", "H", "A"]
    
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
