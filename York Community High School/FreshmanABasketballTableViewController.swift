//
//  FreshmanABasketballTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 12/4/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class FreshmanABasketballTableViewController: UITableViewController {

    var date = ["11/25/2016", "11/26/2016", "12/02/2016", "12/03/2016", "12/10/2016", "12/13/2016", "12/16/2016", "12/17/2016", "12/19/2016", "12/20/2016", "01/04/2017", "01/07/2017", "01/14/2017", "01/16/2017 ", "01/17/2017", "01/20/2017", "01/21/2017", "01/27/2017", "02/03/2017", "02/10/2017", "02/11/2017", "02/14/2017", "02/17/2017"]
    var team = ["@ Joliet West Tournament - 2 games will be played", "@ Joliet West Tournament", "@ GLENBARD WEST", "@ East Aurora", "vs. West Aurora-Paint the Gym Purple", "vs. OAK PARK RIVER FOREST", "vs. DOWNERS GROVE NORTH", "@ Riverside - Brookfield Tournament", "@ Riverside - Brookfield Tournament", "@ Riverside - Brookfield Tournament", "@ Glenbard East", "@ HINSDALE CENTRAL", "vs. Schaumburg", "@ Downers Grove South", "vs. Wheaton Warrenville South", "@ PROVISO WEST", "@ LYONS TOWNSHIP", "vs. GLENBARD WEST", "@ DOWNERS GROVE NORTH", "@ OAK PARK RIVER FOREST", "vs. HINSDALE CENTRAL", "vs. LYONS TOWNSHIP", "vs. PROVISO WEST"]
    var time = ["2:30 PM", "8:30 AM", "4:30 PM", "4:30 PM", "3:30 PM", "4:30 PM", "4:30 PM", "TBA", "TBA", "TBA", "6:00 PM", "11:30 AM", "9:30 AM", "11:00 AM", "4:30 PM", "4:30 PM", "2:00 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:30 PM"]
    var location = ["Joliet West HS", "Joliet West HS", "GLENBARD WEST", "Field House", "Field House", "South Gym", "Field House", "Riverside-Brookfield", "Riverside-Brookfield", "Riverside-Brookfield", "Glenbard East", "HInsdale Central", "Field House", "Field House Ct 1", "South Gym", "PROVISO WEST", "LYONS TOWNSHIP", "South Gym", "DOWNERS GROVE NORTH", "OPRF", "South Gym", "South Gym", "South Gym"]
    var home = ["A", "A", "A", "A", "H", "H", "H", "A", "A", "A", "A", "A", "H", "A", "H", "A", "A", "H", "A", "A", "H", "H", "H"]
    
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
