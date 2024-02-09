const apps1 = [
    {
        name: "App 1",
        description: "Description of App 1",
        icon: "music-5551865_1280.jpg"
    },
    {
        name: "App 2",
        description: "Description of App 2",
        icon: "guitars.jpg"
    },
    {
        name: "App 3",
        description: "Description of App 3",
        icon: "material-icon-2155438_640.png"
    },
    {
        name: "App 4",
        description: "Description of App 4",
        icon: "medical.jpg"
    },
    {
        name: "App 5",
        description: "Description of App 5",
        icon: "bubbles.png"
    },
    {
        name: "App 6",
        description: "Description of App 6",
        icon: "icon.jpg"
    }
];

const apps2 =[
    {
        name: "App 7",
        description: "Description of App 7",
        icon: "email.png"
    },
    {
        name: "App 8",
        description: "Description of App 8",
        icon: "raincloud.png"
    },
    {
        name: "App 9",
        description: "Description of App 9",
        icon: "seo.png"
    },
    {
        name: "App 10",
        description: "Description of App 10",
        icon: "chat.png"
    },
    {
        name: "App 11",
        description: "Description of App 11",
        icon: "kontroller.png"
    },
    {
        name: "App 12",
        description: "Description of App 12",
        icon: "clapperboard.png"
    },
    {
        name: "App 13",
        description: "Description of App 13",
        icon: "download.png"
    },
    {
        name: "App 14",
        description: "Description of App 14",
        icon: "calculator.png"
    },
    {
        name: "App 3",
        description: "Description of App 3",
        icon: "calendar.png"
    }
];

// Function to render apps
function renderApps() {
    const appList = document.getElementById('app-list');

    apps1.forEach(app => {
        const appElement = document.createElement('div');
        appElement.classList.add('app');

        const icon = document.createElement('img');
        icon.src = app.icon;
        appElement.appendChild(icon);

        const name = document.createElement('h2');
        name.textContent = app.name;
        appElement.appendChild(name);

        const description = document.createElement('p');
        description.textContent = app.description;
        appElement.appendChild(description);

        appList.appendChild(appElement);
    });
    
    apps2.forEach(app => {
        const appElement = document.createElement('div');
        appElement.classList.add('app');

        const icon = document.createElement('img');
        icon.src = app.icon;
        appElement.appendChild(icon);

        const name = document.createElement('h2');
        name.textContent = app.name;
        appElement.appendChild(name);

        const description = document.createElement('p');
        description.textContent = app.description;
        appElement.appendChild(description);

        appList.appendChild(appElement);
    });
}

// Render apps when the page loads
window.onload = function () {
    renderApps();
};
