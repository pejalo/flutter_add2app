//
//  AppDelegate.swift
//  Add2App
//
//  Created by Peter LoBue on 1/29/19.
//  Copyright © 2019 pejalo. All rights reserved.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {

    var flutterEngine : FlutterEngine?

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.flutterEngine = FlutterEngine(name: "io.flutter", project: nil)
        self.flutterEngine?.run(withEntrypoint: nil)
        GeneratedPluginRegistrant.register(with: self.flutterEngine)
        
        let viewController = ViewController()
        
        window = UIWindow()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

}
