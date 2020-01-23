## Edge Device storyboard

Retail chain is deploying a smart cart solution in their locations distributed across the country

There are 2 types of edge devices to be managed:

1. 'Smart shoping carts' (aka smartcarts)
2. 'Smart scales' for weighting vegetables which automatically detect what is being weighted to apply correct price (smart camera with AI-based visual recognition)

Additionally each store has a server part where the Checkout service is running. Checkout service based on data from smart carts, POS and inventory database 

Basic setup

1. Install IEC edge agent
2. Register the edge node with specific attributes as SmartCart  (all participant use 1 central IBM Edge Computing Hub)
3. Verify in UI that node is registered. View the policy that applies `smartcart-service` and `batter-monitor` services to the device SmartCart
4. Verify that agreement is established and that services (docker containers) runs on the device

Building a new service for Smart Scale devices

5. Define a new service for smartscales  (using existing Docker container)
6. Define a new policy smartscale-policy that installs new service on the smart scales
7. Change node attributes from SmartCart to SmartScale (unregister/register) 
8. Watch workload `smartcart` being removed and workload `smartscale` being run

This concludes the Edge Device storyboard
