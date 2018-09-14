//
//  AcademicsListViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 7/20/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//
/*The MIT License (MIT)
 
 Copyright (c) 2015 PrashantKumar Mangukiya
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */
//  Created by Prashant on 14/09/15.
//  Copyright (c) 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class AcademicsListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, XMLParserDelegate {
    
    
    // outlet - table view
    @IBOutlet var myTableView: UITableView!
    
    // outet - activity indicator
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    
    
    // xml parser
    var myParser: XMLParser = XMLParser()
    
    // rss records
    var rssRecordList : [AcademicsRSSRecord] = [AcademicsRSSRecord]()
    var rssRecord : AcademicsRSSRecord?
    var isTagFound = [ "item": false , "title":false, "pubDate": false ,"link":false]
    
    
    
    
    // MARK - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let background = UIImage(named: "York High School 2.jpg")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
        
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = imageView.bounds
        imageView.addSubview(blurView)
        
        // set tableview delegate
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // load Rss data and parse
        if self.rssRecordList.isEmpty {
            self.loadRSSData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // MARK: - Table view dataSource and Delegate
    
    // return number of section within a table
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // return row height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    // return how may records in a table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.rssRecordList.count
    }
    
    // return cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // collect reusable cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "rssCell", for: indexPath)
        
        // find record for current cell
        let thisRecord : AcademicsRSSRecord  = self.rssRecordList[(indexPath as NSIndexPath).row]
        
        // set value for main title and detail tect
        cell.textLabel?.text = thisRecord.title
        cell.detailTextLabel?.text = thisRecord.pubDate
        
        // return cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "academicsSegueShowDetails", sender: self)
    }
    
    
    
    
    // MARK: - NSXML Parse delegate function
    
    // start parsing document
    func parserDidStartDocument(_ parser: XMLParser) {
        // start parsing
    }
    
    // element start detected
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        
        if elementName == "item" {
            self.isTagFound["item"] = true
            self.rssRecord = AcademicsRSSRecord()
            
        }else if elementName == "title" {
            self.isTagFound["title"] = true
            
        }else if elementName == "link" {
            self.isTagFound["link"] = true
            
        }else if elementName == "pubDate" {
            self.isTagFound["pubDate"] = true
        }
        
    }
    
    // characters received for some element
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        if isTagFound["title"] == true {
            self.rssRecord?.title += string
            
        }else if isTagFound["link"] == true {
            self.rssRecord?.link += string
            
        }else if isTagFound["pubDate"] == true {
            self.rssRecord?.pubDate += string
        }
        
    }
    
    // element end detected
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if elementName == "item" {
            self.isTagFound["item"] = false
            self.rssRecordList.append(self.rssRecord!)
            
        }else if elementName == "title" {
            self.isTagFound["title"] = false
            
        }else if elementName == "link" {
            self.isTagFound["link"] = false
            
        }else if elementName == "pubDate" {
            self.isTagFound["pubDate"] = false
        }
    }
    
    // end parsing document
    func parserDidEndDocument(_ parser: XMLParser) {
        
        //reload table view
        self.myTableView.reloadData()
        
        // stop spinner
        self.spinner.stopAnimating()
    }
    
    // if any error detected while parsing.
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        
        //  stop animation
        self.spinner.stopAnimating()
        
        // show error message
        self.showAlertMessage(alertTitle: "Error", alertMessage: "Error while parsing xml.")
    }
    
    
    
    
    // MARK: - Utility functions
    
    // load rss and parse it
    fileprivate func loadRSSData(){
        
        if let rssURL = URL(string: ACAD_RSS_FEED_URL) {
            
            // start spinner
            self.spinner.startAnimating()
            
            // fetch rss content from url
            self.myParser = XMLParser(contentsOf: rssURL)!
            
            // set parser delegate
            self.myParser.delegate = self
            self.myParser.shouldResolveExternalEntities = false
            
            // start parsing
            self.myParser.parse()
        }
        
    }
    
    // show alert with ok button
    fileprivate func showAlertMessage(alertTitle: String, alertMessage: String ) -> Void {
        
        // create alert controller
        let alertCtrl = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertControllerStyle.alert) as UIAlertController
        
        // create action
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler:
            { (action: UIAlertAction) -> Void in
                // you can add code here if needed
        })
        
        // add ok action
        alertCtrl.addAction(okAction)
        
        // present alert
        self.present(alertCtrl, animated: true, completion: { (void) -> Void in
            // you can add code here if needed
        })
    }
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "academicsSegueShowDetails" {
            
            // find index path for selected row
            let selectedIndexPath : [IndexPath] = self.myTableView.indexPathsForSelectedRows!
            
            // deselect the selected row
            self.myTableView.deselectRow(at: selectedIndexPath[0], animated: true)
            
            // create destination view controller
            let destVc = segue.destination as! AcademicsDetailsViewController
            
            // set title for next screen
            destVc.navigationItem.title = self.rssRecordList[(selectedIndexPath[0] as NSIndexPath).row].title
            
            // set link value for destination view controller
            destVc.link = self.rssRecordList[(selectedIndexPath[0] as NSIndexPath).row].link
            
        }
        
    }
    
    
}
