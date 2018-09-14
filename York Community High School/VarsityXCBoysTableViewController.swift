//
//  VarsityXCBoysTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 8/14/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class VarsityXCBoysTableViewController: UITableViewController {

    var date = ["02/07/2017", "02/10/2017", "02/22/2017", "02/25/2017", "03/03/2017", "03/17/2017", "04/03/2017", "04/08/2017*", "04/15/2017", "04/21/2017", "04/22/2017", "04/26/2017", "04/28/2017", "05/05/2017", "05/12/2017", "05/19/2017", "05/26/2017"]
    var team = ["vs. York Quad - DGS,Boilingbrook Naper Central", "@ Proviso West Quad", "vs. Hoffman Estates/Maine East Palatine", "@ Proviso West Invite", "vs. York Invite", "@ WSC", "vs. Proviso East and Neuqua Valley", "vs. Palatine and Jones Prep", "@ Downers Grove South Invite", "vs. York Quad", "@ Palatine Distance invite", "@ Lyons Township and OPRF", "@ Prospect Invite", "@ DuPage County Invite", "@ Confernce Meet", "@ IHSA Sectional - IHSA Sectional", "@ IHSA State"]
    var time = ["4:30 PM", "5:00 PM", "5:00 PM", "9:00 AM", "5:00 PM", "5:00 PM", "4:30 PM", "3:00 PM", "9:00 AM", "4:30 PM", "7:00 PM", "4:30 PM", "4:30 PM", "4:30 PM", "4:45 PM", "5:00 PM", "TBD"]
    var location = ["Field House", "Proviso West", "Field House", "Proviso West", "Field House", "Proviso West", "Stadium", "Stadium", "Downers Grove South", "Stadium", "Palatine HS", "Lyons Township", "Prospect Invite", "Lake Park East Campus", "Lyons Township - SC", "Lake Park", "EIU- Charleston, IL"]
    var home = ["H", "A", "H", "A", "H", "A", "H", "H", "A", "H", "A", "A", "A", "A", "A", "A", "A"]
    
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
