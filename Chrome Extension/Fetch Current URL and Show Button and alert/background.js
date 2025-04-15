chrome.tabs.onCreated.addListener(function (tab) {
    console.log(`UU: Created tab id: ${tab.id}, url: ${tab.url}`);
});

chrome.tabs.onUpdated.addListener(function (tabId, changeInfo, tab) {
    if (changeInfo.status === "complete"){
console.log(`UU: Updated tab id: ${tab.id}, url: ${tab.url}`);
    }
});