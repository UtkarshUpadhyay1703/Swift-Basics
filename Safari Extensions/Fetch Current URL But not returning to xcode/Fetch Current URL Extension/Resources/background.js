browser.runtime.onMessage.addListener((request, sender, sendResponse) => {
	console.log("UU: Received request: ", request);
	
	if (request.greeting === "hello")
		sendResponse({ farewell: "goodbye" });
});

chrome.tabs.onCreated.addListener((tab) => {
	if (tab.url) {
		console.log("UU: New tab URL:", tab.url);
	}
});

chrome.tabs.onUpdated.addListener((tabId, changeInfo, tab) => {
	if (changeInfo.url) {
		console.log("UU: Tab URL changed to:", changeInfo.url);
		
		browser.runtime.sendNativeMessage({message: "request:enabled_status"}, function(response) {
					sendResponse({
						"background_response:enabled": response["delivery:enabled_status"]
					});
				});
		
		browser.runtime.sendNativeMessage("com.Faronics.Fetch-Current-URL.Extension", { message: "Hello from JS" })
		.then(response => {
			console.log("📬 Response from native:", response);
		})
		.catch(error => {
			console.error("❌ Error sending native message:", error);
		});
	}
});
