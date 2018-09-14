//
//  BlogNavViewController.swift
//  York Community High School
//
//  Created by Domenic Conversa on 12/31/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

class BlogNavViewController: UINavigationController {

    //var navBar: UINavigationBar = UINavigationBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
        
        //self.setNavBarToTheView()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let statusView = UIView(frame: CGRect(x: 0, y: 0, width:     self.view.bounds.width, height: 20))
        statusView.backgroundColor = UIColor.init(red: 0/255, green: 44/255, blue: 32/255, alpha: 1).withAlphaComponent(1.0)
        self.view.addSubview(statusView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //custom nav bar
    /*func setNavBarToTheView() {
        self.navBar.frame = CGRect(x:0, y:0, width:320, height:20)  // Here you can set you Width and Height for your navBar
        //self.navBar.backgroundColor = (UIColor.clear)
        self.view.addSubview(navBar)
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
