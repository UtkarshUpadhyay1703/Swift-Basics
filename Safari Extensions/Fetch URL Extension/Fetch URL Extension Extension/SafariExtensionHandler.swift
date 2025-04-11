//
//  SafariExtensionHandler.swift
//  Fetch URL Extension Extension
//
//  Created by admin on 4/10/25.
//

import SafariServices

class SafariExtensionHandler: SFSafariExtensionHandler {
	
	override func messageReceived(withName messageName: String, from page: SFSafariPage, userInfo: [String : Any]? = nil) {
		print("UU: Message received: \(messageName)")
		
		if messageName == "UU: PageURL" {
			if let url = userInfo?["url"] as? String {
				print("UU: Received URL from script.js: \(url)")
			} else {
				print("UU: No URL found in userInfo")
			}
		}
	}
	
	override func toolbarItemClicked(in window: SFSafariWindow) {
		print("UU: Toolbar clicked — manually sending message for test")
		
		changeToolbarBadge(window)
	}
	
	func changeToolbarBadge(_ window: SFSafariWindow) {
		window.getToolbarItem { toolbarItem in
			toolbarItem?.setBadgeText("11")
			toolbarItem?.setLabel("HO JO HO JO")
		}
		print("!!!!!!!!!!!!!!!!!!!")
	}
}
