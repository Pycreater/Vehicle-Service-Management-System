document.addEventListener("DOMContentLoaded", function () {
    const serviceDescription = document.getElementById("serviceDescription");

    const services = {
        changeOil: "Change oil involves draining the old oil from the engine and replacing it with fresh oil. It helps in lubricating engine parts, reducing friction, and extending the engine's life.",
        engineTuneUp: "Engine tune-up includes inspecting and adjusting key components like spark plugs, fuel injectors, and ignition timing. This ensures optimal engine performance and fuel efficiency.",
        overallCheckup: "An overall checkup involves a comprehensive inspection of the vehicle's major systems, including brakes, suspension, and fluids. It helps identify potential issues and ensures overall safety.",
        tireReplacement: "Tire replacement is necessary when tires are worn out or damaged. New tires provide better traction, handling, and overall safety on the road.",
    };

    for (const service in services) {
        if (Object.hasOwnProperty.call(services, service)) {
            const serviceItem = document.getElementById(service);
            serviceItem.addEventListener("click", function () {
                serviceDescription.innerText = services[service];
            });
        }
    }
});
