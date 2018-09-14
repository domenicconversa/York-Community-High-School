//
//  VarsityVolleyballTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 3/31/17.
//  Copyright © 2017 Domenic Conversa. All rights reserved.
//

import UIKit

class VarsityVolleyballTableViewController: UITableViewController {

    var date = ["03/23/2017", "03/23/2017", "04/01/2017", "04/03/2017", "04/04/2017", "04/07/2017", "04/10/2017", "04/11/2017", "04/12/2017", "04/18/2017", "04/20/2017", "04/25/2017", "04/27/2017", "04/28/2017", "04/29/2017", "05/01/2017", "05/02/2017", "05/09/2017", "05/11/2017", "05/13/2017", "05/15/2017", "05/23/2017", "05/24/2017", "05/26/2017", "05/30/2017", "06/02/2017", "06/03/2017"]
    var team = ["@ Wheaton Academy", "@ Wheaton Academy", "@ Thronton Fractional North Invite", "vs. Lincoln-Way West", "@ GLENBARD WEST", "vs. York Quad", "vs. Stagg", "vs. LYONS TOWNSHIP", "@ Downers Grove South", "vs. DOWNERS GROVE NORTH", "@ Willowbrook", "vs. HINSDALE CENTRAL", "vs. Hinsdale South", "vs. York Invite", "vs. York Invite", "vs. Andrew", "@ PROVISO WEST", "@ OAK PARK RIVER FOREST", "@ Morton", "@ Lakefront Challenge", "vs. Oak Lawn", "@ IHSA - Regional Prelims", "@ IHSA - Regional Finals", "@ IHSA - Sectional Semifinals", "@ IHSA - Sectional Finals", "@ IHSA - State Finals", "@ IHSA - State Finals"]
    var time = ["5:30 PM", "5:30 PM", "9:00 AM", "5:30 PM", "5:30 PM", "5:00 PM", "5:45 PM", "5:30 PM", "5:30 PM", "5:30 PM", "5:30 PM", "5:30 PM", "5:30 PM", "5:00 PM", "9:00 AM", "5:30 PM", "5:30 PM", "5:30 PM", "5:30 PM", "TBA", "5:30 PM", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA"]
    var location = ["Wheaton Academy", "Wheaton Academy", "T. F. North HS", "Green/White Gym", "GLENBARD WEST", "Green/White Gym", "Green/White Gym", "Green/White Gym", "Downers Grove South", "Green/White Gym", "Willowbrook", "Green/White Gym", "Green/White Gym", "Green/White Gym", "Green/White Gym", "Campbell Gym", "PROVISO WEST", "OAK PARK RIVER FOREST", "Morton east campus", "Latin School of Chicago", "Green/White Gym", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA", "IHSA"]
    var home = ["A", "A", "A", "H", "A", "H", "H", "H", "A", "H", "A", "H", "H", "H", "H", "H", "A", "A", "A", "A", "H", "A", "A", "A", "A", "A", "A"]
    
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
