//
//  AZTabBar+Protocol.swift
//
//  Created by Antonio Zaitoun on 8/22/16.
//  Copyright © Crofis. All rights reserved.
//

import Foundation
import UIKit

@objc public protocol AZTabBarDelegate {
    
    /*
     * Triggered when clicking the menu button.
     */
    @objc optional func stickerTabBar(_ tabBarController: AZTabBarController, didSelectMenu menu:UIView, at index:Int)
    
    /*
     * Triggered when closing the custom menu
     */
    @objc optional func stickerTabBar(_ tabBarController: AZTabBarController, didCloseMenu menu:UIView, at index:Int)
    
    /*
     * Triggered when navigating between pages.
     */
    @objc optional func stickerTabBar(_ tabBarController: AZTabBarController, didChangeToPage index:Int ,from oldPage:Int)
    
    /*
     * Triggered when changing to a new item.
     */
    @objc optional func stickerTabBar(_ tabBarController: AZTabBarController, didChangeToItem index:Int)
}

 public protocol AZTabBarDataSource {
    
    /*
     * Returns the amount of items inside the tab.
     */
    func numberOfItemsInTabBar(_ tabBarController: AZTabBarController) -> Int

    /*
     * The UIView per index that will be inside the tab.
     */
    func stickerTabBar(_ tabBarController: AZTabBarController, tabViewForPageAtIndex index: Int) -> UIView
    
    /*
     * contentView:UIView - is the content that will be presented inside the content holder.
     * controller:UIViewController - is the UIViewController that holds the content view (if exists).
     */
    func stickerTabBar(_ tabBarController: AZTabBarController, contentViewForPageAtIndex index: Int) -> ( contentView:UIView,controller:UIViewController?)
    
    /*
     * A Custom menu view
     */
    func stickerTabBar(_ tabBarController: AZTabBarController, menuViewForIndex index:Int) -> (view:UIView?,icon:UIImage?,title:String?)
}
