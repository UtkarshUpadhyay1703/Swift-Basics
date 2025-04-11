console.log("UU: script.js injected on", window.location.href);


document.addEventListener("DOMContentLoaded", function(event) {
	if (!document.getElementById("myExtensionBtn"))
	{
		const button = document.createElement("button");
		button.id = "myExtensionBtn";
		button.textContent = "Click For Alert !!";
		button.style.position = "fixed";
		button.style.top = "20px";
		button.style.right = "50%";
		button.style.zIndex = "9999";
		button.style.padding = "10px 15px";
		button.style.backgroundColor = "#007aff";
		button.style.color = "white";
		button.style.border = "none";
		button.style.borderRadius 	= "5px";
		button.style.cursor = "pointer";
		button.style.boxShadow = "0px 2px 4px rgba(0, 0, 0, 0.2)";
		
		button.addEventListener("click", function () {
			alert("You clicked the Safari Extension Button!");
		});
		
		document.body.appendChild(button);
		console.log("UU: Received !! ");
	}
	
	safari.extension.dispatchMessage("UU: Clicked Button");
});

(function () {
	const currentUrl = window.location.href;
	console.log("UU: Dispatching message with URL:", currentUrl);
	safari.extension.dispatchMessage("UU: PageURL", { url: currentUrl });
})();
