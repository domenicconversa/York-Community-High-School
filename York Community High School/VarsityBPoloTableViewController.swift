//
//  VarsityBPoloTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 3/31/17.
//  Copyright © 2017 Domenic Conversa. All rights reserved.
//

import UIKit

class VarsityBPoloTableViewController: UITableViewController {

    var date = ["03/07/2017", "03/09/2017", "03/11/2017", "03/11/2017", "03/11/2017", "03/14/2017", "03/16/2017", "03/22/2017", "03/31/2017", "04/01/2017", "04/07/2017", "04/08/2017", "04/13/2017", "04/17/2017", "04/20/2017", "04/22/2017", "04/24/2017", "04/26/2017", "04/28/2017", "04/29/2017", "05/03/2017", "05/05/2017", "05/06/2017", "05/10/2017", "05/12/2017", "05/13/2017", "05/18/2017", "05/19/2017", "05/20/2017"]
    var team = ["@ Naperville North", "@ Morton", "@ Conant Invite", "@ Conant Invite", "@ Conant Invite", "@ Hinsdale Central", "@ Mundelein", "vs. Oak Park - River Forest", "vs. York Invite", "vs. York Invite", "@ Lyons Township Invite", "@ Lyons Township Invite", "vs. St. Patrick", "vs. Hinsdale South", "vs. St. Charles North", "@ Niles West Tourney", "vs. Neuqua Valley", "@ Palatine", "vs. York Round Robin", "vs. York Round Robin", "vs. Libertyville", "vs. WSC Invite Semi-Finals", "vs. WSC Invite Finals", "@ IHSA Sectional", "@ IHSA Sectional", "@ IHSA Sectional", "@ IHSA State", "@ IHSA State", "@ IHSA State"]
    var time = ["6:00 PM", "6:00 PM", "8:00 AM", "8:00 AM", "8:00 AM", "6:00 PM", "6:00 PM", "6:00 PM", "3:00 PM", "8:00 AM", "5:00 PM", "9:00 AM", "6:00 PM", "6:00 PM", "5:00 PM", "8:00 AM", "6:00 PM", "6:00 PM", "5:00 PM", "8:00 AM", "6:00 PM", "4:30 PM", "8:00 AM", "TBA", "TBA", "TBA", "TBA", "TBA", "TBA"]
    var location = ["Naperville North", "Morton East", "Conant High School", "Conant High School", "Conant High School", "Hinsdale Central", "Mundelein", "Pool", "Pool", "Pool", "Lyons Township South Campus", "Lyons Township South Campus", "Pool", "Pool", "Pool", "Niles North", "Pool", "Palatine", "Pool", "Pool", "Pool", "Pool", "Pool", "IHSA Sectional", "IHSA Sectional", "IHSA Sectional", "TBA", "TBA", "TBA"]
    var home = ["A", "A", "A", "A", "A", "A", "A", "H", "H", "H", "A", "A", "H", "H", "H", "A", "H", "A", "H", "H", "H", "H", "H", "A", "A", "A", "TBA", "TBA", "TBA"]
    
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
