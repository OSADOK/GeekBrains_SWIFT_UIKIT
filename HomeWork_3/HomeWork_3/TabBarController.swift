//
//  TabBarController.swift
//  HomeWork_3
//
//  Created by Славон Еремин on 17.12.2023.
//
import UIKit
import Foundation

class TabBarController: UITabBarController {
    
    let tableVCFrends = ViewControllerFrends()
    let tableVCGroups = ViewControllerGroups()
    let collVCPhotos = ViewControllerPhotos()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableVCFrends.title = "Frends"
        tableVCFrends.tabBarItem.title = "Frends"

        tableVCGroups.title = "Groups"
        tableVCGroups.tabBarItem.title = "Groups"

        collVCPhotos.title = "Photos"
        collVCPhotos.tabBarItem.title = "Photos"
        
        viewControllers = [tableVCFrends, tableVCGroups, collVCPhotos]
    }
}

