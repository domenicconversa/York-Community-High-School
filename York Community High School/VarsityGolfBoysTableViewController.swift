//
//  VarsityGolfBoysTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 8/23/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class VarsityGolfBoysTableViewController: UITableViewController {

    var date = ["03/22/2017", "03/24/2017", "03/27/2017", "03/28/2017", "03/28/2017", "03/30/2017", "03/31/2017", "04/01/2017", "04/04/2017", "04/06/2017", "04/11/2017", "04/13/2017", "04/15/2017", "04/17/2017", "04/19/2017", "04/21/2017", "04/22/2017", "04/24/2017", "04/26/2017", "04/27/2017", "04/29/2017", "05/01/2017", "05/03/2017", "05/05/2017", "05/06/2017", "05/08/2017", "05/10/2017", "05/12/2017", "05/13/2017", "05/17/2017", "05/18/2017", "05/19/2017", "05/20/2017", "05/20/2017", "05/22/2017", "05/23/2017", "05/24/2017", "05/27/2017", "05/30/2017", "05/31/2017", "06/03/2017", "06/05/2017", "06/09/2017", "06/10/2017"]
    var team = ["@ Hinsdale South-Cancelled", "@ Lincoln-Way West", "vs. Trinity", "@ Geneva", "@ Geneva", "vs. Waubonsie Valley - Cancelled - DH", "vs. Niles West - DH - Cancelled", "@ Glenbard North (DH)", "@ Metea Valley", "vs. Conant", "@ Nazareth", "vs. Stagg", "vs. Riverside - Brookfield (DH)", "vs. PROVISO WEST", "vs. LYONS TOWNSHIP", "@ HINSDALE CENTRAL", "@ Bartlett", "vs. DOWNERS GROVE NORTH", "@ GLENBARD WEST", "@ Libertyville", "vs. Willowbrook (DH)", "@ OAK PARK RIVER FOREST", "@ PROVISO WEST", "@ LYONS TOWNSHIP", "@ Glenbard South (DH)", "vs. HINSDALE CENTRAL", "@ DOWNERS GROVE NORTH", "vs. GLENBARD WEST", "@ Maine South (DH)", "vs. OAK PARK RIVER FOREST", "@ Glenbrook South", "@ Montini", "@ DGS", "@ LWE", "@ IHSA - Regional Quarterfina", "@ IHSA - Regional Semifinals", "@ IHSA - Regional Semifinals", "@ IHSA - Regional Finals", "@ IHSA - Sectional Semi-Final", "@ IHSA - Sectional Semi-Final", "@ IHSA - Sectional Final", "@ IHSA - Super-Sectionals", "@ IHSA - State Finals", "@ IHSA - State Finals"]
    var time = ["4:30 PM", "7:00 PM", "10:00 AM", "11:00 AM", "12:00 PM", "10:00 AM", "10:00 AM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "9:00 AM", "4:30 PM", "4:30 PM", "4:45 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "6:00 PM", "4:30 PM", "10:00 AM", "12:00 PM", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA"]
    var location = ["Hinsdale South", "Bandit Field", "Triton College", "Geneva", "Geneva", "Bryan MS Field", "Bryan MS Field", "Glenbard North (DH)", "Metea Valley", "Bryan Middle School", "Nazareth", "Bryan MS Field", "Bryan MS Field", "Bryan MS Field", "Bryan MS Field", "HINSDALE CENTRAL", "Bartlet HS", "Bryan MS Field", "Memorial Park", "Libertyville", "Bryan MS Field", "OAK PARK RIVER FOREST", "PROVISO WEST", "Lyons Township SC", "Glenbard South (DH)", "Bryan MS Field", "DGN East Field", "Bryan MS Field", "Maine South (DH)", "Bryan MS Field", "Bandit Field", "Montini", "DGS", "DGS", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA"]
    var home = ["A", "A", "H", "A", "A", "H", "H", "A", "A", "H", "A", "H", "H", "H", "H", "A", "A", "H", "A", "A", "H", "A", "A", "A", "A", "H", "A", "H", "A", "H", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A"]
    
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
