//
//  MainScrollViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 2/19/17.
//  Copyright © 2017 Domenic Conversa. All rights reserved.
//

import UIKit

class MainScrollViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //rename to make more sense
        
        let aboutMeVC = self.storyboard?.instantiateViewController(withIdentifier: "Schedules") as! UITabBarController!
        self.addChildViewController(aboutMeVC!)
        self.scrollView.addSubview((aboutMeVC?.view)!)
        aboutMeVC?.didMove(toParentViewController: self)
        aboutMeVC?.view.frame = scrollView.bounds
        
        let projectsVC = self.storyboard?.instantiateViewController(withIdentifier: "Updates") as UIViewController!
        self.addChildViewController(projectsVC!)
        self.scrollView.addSubview((projectsVC?.view)!)
        projectsVC?.didMove(toParentViewController: self)
        projectsVC?.view.frame = scrollView.bounds
        
        var aboutMeFrame: CGRect = aboutMeVC!.view.frame
        aboutMeFrame.origin.x = self.view.frame.width
        aboutMeVC?.view.frame = aboutMeFrame
        
        
        let involvementVC = self.storyboard?.instantiateViewController(withIdentifier: "Blog") as UIViewController!
        self.addChildViewController(involvementVC!)
        self.scrollView.addSubview((involvementVC?.view)!)
        involvementVC?.didMove(toParentViewController: self)
        involvementVC?.view.frame = scrollView.bounds
        
        var involvementFrame: CGRect = involvementVC!.view.frame
        involvementFrame.origin.x = 2 * self.view.frame.width
        involvementVC?.view.frame = involvementFrame
        
        self.scrollView.contentSize = CGSize(width: (self.view.frame.width) * 3, height: (self.view.frame.height))
        self.scrollView.contentOffset = CGPoint(x: (self.view.frame.width) * 1 , y: (self.view.frame.height))
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
