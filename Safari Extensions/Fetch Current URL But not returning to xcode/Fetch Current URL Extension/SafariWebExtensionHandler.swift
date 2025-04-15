//
//  SafariWebExtensionHandler.swift
//  Fetch Current URL Extension
//
//  Created by admin on 4/7/25.
//

import SafariServices
import os.log

let SFExtensionMessageKey = "message"

class SafariWebExtensionHandler: NSObject, NSExtensionRequestHandling {
	
		func beginRequest(with context: NSExtensionContext) {
			print("UU: Called: beginRequest")
	        let item = context.inputItems[0] as! NSExtensionItem
	        let message = item.userInfo?[SFExtensionMessageKey]
	        os_log(.default, "Received message from browser.runtime.sendNativeMessage: %@", message as! CVarArg)

	        let response = NSExtensionItem()
	        response.userInfo = [ SFExtensionMessageKey: [ "Response to": message ] ]

	        context.completeRequest(returningItems: [response], completionHandler: nil)
	    }
	
	
//	override func messageReceived(withName messageName: String, from page: SFSafariPage, userInfo: [String : AnyObject]!) {
//		page.getPropertiesWithCompletionHandler { properties in
//			NSLog("The extension received a message (\(messageName)) from a script injected into (\(properties?.url)) with userInfo (\(userInfo))")
//		}
//	}
	
	
//	func beginRequest(with context: NSExtensionContext) {
//		print("🔥 SafariWebExtensionHandler triggered")
//
//		guard let item = context.inputItems.first as? NSExtensionItem,
//			  let userInfo = item.userInfo as? [String: Any],
//			  let message = userInfo["message"] else {
//			print("❌ No message received from JS")
//			return
//		}
//
//		print("📨 Message received from JS:", message)
//
//		if let dict = message as? [String: Any],
//		   let url = dict["tabURL"] as? String {
//			print("🌐 Tab URL sent from JS:", url)
//		}
//	}


	
	
	
	
//	func beginRequest(with context: NSExtensionContext) {
//		guard let message = context.inputItems.first as? NSExtensionItem,
//			  let userInfo = message.userInfo as? [String: Any],
//			  let messageBody = userInfo["message"] else {
//			print("UU: No message received")
//			return
//		}
//
//		print("Message from JS: \(messageBody)")
//
//		if let dict = messageBody as? [String: Any],
//		   let url = dict["tabURL"] as? String {
//			print("UU: Current Tab URL:", url)
//		} else {
//			print("UU: Could not extract URL")
//		}
//
//		context.completeRequest(returningItems: nil, completionHandler: nil)
//	}
}
