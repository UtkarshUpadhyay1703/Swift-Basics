browser.runtime.sendMessage({ greeting: "hello" }).then((response) => {
	console.log("UU: Received response: ", response);
});

browser.runtime.onMessage.addListener((request, sender, sendResponse) => {
	console.log("UU: Received request: ", request);
});


if (!document.getElementById("myExtensionBtn")) {
	const button = document.createElement("button");
	button.id = "myExtensionBtn";
	button.innerText = "Click for Alert";
	
	Object.assign(button.style, {
	position: "fixed",
	top: "20px",
	left: "50%",
	zIndex: "9999",
	padding: "10px 20px",
	backgroundColor: "#007AFF",
	color: "white",
	border: "none",
	borderRadius: "6px",
	fontSize: "14px",
	cursor: "pointer",
	boxShadow: "0 2px 6px rgba(0,0,0,0.2)"
	});
	
	button.addEventListener("click", () => {
		alert("You clicked the button on the page!");
	});
	
	document.body.appendChild(button);
}

