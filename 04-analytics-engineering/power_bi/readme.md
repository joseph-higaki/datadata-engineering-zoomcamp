# Power BI

Says its got version controLl!!!!!!!

First issue haha![alt text](../../_resources/04-analytics-engineering/power_bi/readme.md/image.png)

![alt text](../../_resources/04-analytics-engineering/power_bi/readme.md/image-1.png)

Created a service account with Permissions
![alt text](../../_resources/04-analytics-engineering/power_bi/readme.md/image-3.png)

It looks not enough

![alt text](../../_resources/04-analytics-engineering/power_bi/readme.md/image-2.png)

Added  `BigQuery Job User`

Set it up as `Direct Connection`

Save as pbip (Power Bi Project)
![alt text](../../_resources/04-analytics-engineering/power_bi/readme.md/image-4.png)

It was all fine, until I try to slice by a datetime field
![alt text](../../_resources/04-analytics-engineering/power_bi/readme.md/image-5.png)

https://community.fabric.microsoft.com/t5/Service/BIgQuery-Account-Permissions/m-p/1404936#M110072
Let's try adding 


Looks like it is working
I'm trying to do a calculation

At the Transformation (Power QUery) - can't
![alt text](../../_resources/04-analytics-engineering/power_bi/readme.md/image-7.png)

At the model (DAX) - cant
![alt text](../../_resources/04-analytics-engineering/power_bi/readme.md/image-6.png)

**Failed at working with 100 000 records** 

