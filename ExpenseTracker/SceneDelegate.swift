//
//  SceneDelegate.swift
//  ExpenseTracker
//
//  Created by Michael Zhao on 1/3/22.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    var coreDataStack = CoreDataStack(containerName: "ExpenseTracker")

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        let contentView = ContentView()
            .environment(\.managedObjectContext, coreDataStack.viewContext)

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

