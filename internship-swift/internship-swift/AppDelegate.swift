//
//  AppDelegate.swift
//  internship-swift
//
//  Created by Alexandr on 4/25/21.
//

import UIKit
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {
    @Published var news: [ItemModel] = []
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        
        Database.database().reference().observeSingleEvent(of: .value, with: { (snapshot) in
            guard let values = snapshot.value as? [AnyObject] else { return }
            print(values)
            for value in values {
                let newItem = ItemModel.init(description: value["description"] as! String,
                                             expertComment: value["expertComment"] as! String,
                                             id: value["id"] as! Int,
                                             imageUrl: value["imageUrl"] as! String,
                                             title: value["title"] as! String)
                self.news.append(newItem)
            }
        })
        
        return true;
    }
}
