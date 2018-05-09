//
//  AppDelegate.swift
//  SensorKit-Demo
//
//  Created by Joe Blau on 5/8/18.
//  Copyright © 2018 Bodlog. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TodayViewCollectionViewController(collectionViewLayout: TodayViewFlowLayout())
        window?.makeKeyAndVisible()
        return true
    }
    
}

