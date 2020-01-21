## Edge Device storyboard

Retail chain is deploying a smart cart solution in their locations distributed across the country

There are 2 types of edge devices to be managed:

1. 'Smart carts'
2. 'Smart scales' for weighting vegetables which automatically detect what is being weighted to apply correct price (smart camera with AI-based visual recognition)

Additionally each store has a server part where the Checkout service is running. Checkout service based on data from smart carts, POS and inventory database 

Basic setup

1. Install IEC edge agent
2. Register the edge node with specific attributes as SmartCart  (all participant use 1 central IBM Edge Computing Hub)
3. Verify in UI that node is registered. View the policy SmartCartPolicy that applies CalculateContentValue to the device SmartCart
4. Verify that agreement is established and CalculateContentValue runs on the device

Building a new service for POS devices

5. Define a new service DetectGoods  (using existing Docker container)
6. Define a new policy DetectGoodsPolicy that installs on the smart scales
7. Change node attributes from SmartCart to SmartScale (unregister/register ?) 
8. Watch workload CalculateContentValue being removed and workload DetectGoods being run

This concludes the Edge Device storyboard
