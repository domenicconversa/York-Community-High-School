//
//  SophomoreSoccerBoysTableViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 8/23/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class SophomoreSoccerBoysTableViewController: UITableViewController {

    var date = ["08/27/2016", "08/30/2016", "09/01/2016", "09/03/2016", "09/06/2016", "09/10/2016", "09/13/2016", "09/17/2016", "09/20/2016", "09/24/2016", "09/27/2016", "09/29/2016", "10/01/2016", "10/04/2016", "10/06/2016", "10/08/2016", "10/13/2016"]
    var team = ["@ Lake Park Invite - Lake Park", "@ Lake Park Invite - South Elgin", "@ Lake Park Invite - Addison Trail", "@ Lake Park Invite - Wheaton North", "v. Hinsdale Central", "@ Immaculate Conception", "@ Proviso West", "v. Willowbrook", "v. Lyons Township", "@ Riverside - Brookfield", "v. Downers Grove North", "v. Addison Trail", "@ Fenton", "@ Oak Park River Forest", "@ Glenbard West", "v. Maine South", "v. Hinsdale South"]
    var time = ["12:00 PM", "4:30 PM", "4:30 PM", "10:00 AM", "4:30 PM", "3:00 PM", "4:30 PM", "10:00 AM", "4:30 PM", "10:00 AM", "4:30 PM", "4:30 PM", "9:00 AM", "4:30 PM", "4:30 PM", "1:30 PM", "4:30 PM"]
    var location = ["Lake Park East Campus", "Lake Park East Campus", "Addison Trail HS", "Lake Park East Campus",  "York Stadium", "Plunkett Athletic Complex- IC", "Proviso West",  "York Stadium",  "York Stadium",  "Stadium",  "York Stadium",  "York Stadium", "Fenton - Redmond Park", "Oak Park River Forest", "Glenbard West",  "York Stadium",  "York Stadium"]
    var home = ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    
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
