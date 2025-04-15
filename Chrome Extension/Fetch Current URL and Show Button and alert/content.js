console.log("UU: Content Loaded !!");

    if (!document.getElementById("extensionButton"))
    {
        const button = document.createElement("button");
        button.id = "extensionButton";
        button.textContent = "Click here for Alert!!";
        button.style.position = "fixed";
        button.style.top = "20px";
        button.style.right = "50%";
        button.style.zIndex = "9999";
        button.style.padding = "10px 15px";
        button.style.backgroundColor = "#007aff";
        button.style.color = "white";
        button.style.border = "2px solid black";
        button.style.cursor = "pointer";
        button.style.boxShadow = "0px 2px 4px rgba(0, 0, 0, 0.2)";

        button.addEventListener("click", function () {
            console.log("UU: Alert Called !!");
            alert("This is the alert after clicking alert button");
        });

        document.body.appendChild(button);
    }