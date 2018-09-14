//
//  AthleticsDetailsViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 7/19/16.
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

class AthleticsDetailsViewController: UIViewController, UIWebViewDelegate {
    
    
    // outlet - activity indicator
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    // outlet - web view
    @IBOutlet var myWebView: UIWebView!
    
    // refresh button
    @IBAction func refreshButtonClicked(_ sender: UIBarButtonItem) {
        self.refreshWebView()
    }
    
    
    // link to browse (this value set by parent controller)
    var link: String?
    
    
    
    
    // MARK: - view functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // set webview delegate
        self.myWebView.delegate = self
        
        // start spinner
        self.spinner.startAnimating()
        
        // load url in webview
        if let fetchURL = URL(string: self.link! ) {
            let urlRequest = URLRequest(url: fetchURL)
            self.myWebView.loadRequest(urlRequest)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // MARK: - Webview delegate
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        // stop spinner
        self.spinner.stopAnimating()
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
        // stop spinner
        self.spinner.stopAnimating()
        
        // show error message
        self.showAlertMessage(alertTitle: "Error", alertMessage: "Sorry, unable to load updates.")
    }
    
    
    
    
    // MARK: - Utility function
    
    // refresh webview
    func refreshWebView(){
        
        // start spinner
        self.spinner.startAnimating()
        
        // reload webview
        self.myWebView.reload()
        
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
    
    
}
