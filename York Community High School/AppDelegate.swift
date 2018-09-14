//
//  AppDelegate.swift
//  York Community High School
//
//  Created by Domenic Conversa on 7/14/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate{

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        UIApplication.shared.setStatusBarStyle(UIStatusBarStyle.lightContent, animated: true)
        
        //clear tab bar
        /*let tabBar = UITabBar.appearance()
        tabBar.barTintColor = UIColor.clear
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()*/
        
        
        
            let dynamicShortcut = UIMutableApplicationShortcutItem(type: "Blog", localizedTitle: "Blog", localizedSubtitle: nil, icon: UIApplicationShortcutIcon(templateImageName:"RSS Filled-50@2x.png"), userInfo: nil)
        
            let firstdynamicShortcut = UIMutableApplicationShortcutItem(type: "General Updates", localizedTitle: "General Updates", localizedSubtitle: nil, icon: UIApplicationShortcutIcon(templateImageName:"Document Filled-50@2x.png"), userInfo: nil)
            
            let seconddynamicShortcut = UIMutableApplicationShortcutItem(type: "Specific Updates", localizedTitle: "Specific Updates", localizedSubtitle: nil, icon: UIApplicationShortcutIcon(templateImageName:"Activity Feed Filled-50@2x.png"), userInfo: nil)
            
            UIApplication.shared.shortcutItems = [dynamicShortcut, firstdynamicShortcut, seconddynamicShortcut]
            
            
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        
        if let tabVC = self.window?.rootViewController as? UITabBarController{
            
            if shortcutItem.type == "Schedules" {
                tabVC.selectedIndex = 0
            } else if shortcutItem.type == "General Updates" {
                tabVC.selectedIndex = 1;
            } else if shortcutItem.type == "Specific Updates" {
                tabVC.selectedIndex = 2;
            }
        }
        
        
    }
    


}

