<!-- TITLE: Developer Overview -->

# Communicating with the team
Most of the communication on the developer side is done 1-1 or through Telegram threads. As needed, extra project management is done on Trello and through appear.in/flatlay.

# Products and Integrations 
## Products
https://wiki.flatlay.io/products
## Integrations
https://wiki.flatlay.io/developer/integrations
# Tools
Including general tools, project management
https://wiki.flatlay.io/developer/tools
# Main Projects

## Creative/User backend
**Databases:** Neo4J, Mysql, GraphDB
**Programming language:** Nodejs
?? EC2 (elastic computing)
**Hosted on:** AWS (Amazon Web Services)

## Brand/Merchant backend
Nodejs 8.3
Running on serverless infrastructure, Lambda
**Backstructures/Hosted on:** Amazon Web Services
**Database: **Using 2 instances of Neo4J:
* Neo4J
* InstaNeo4J

## Affiliate project
**Database:** Elastic Search - gathers product information from different affiliate networks into our own storage, letting us run the search faster
**Code is run on**: Lambda 8.3
**Hosted on:** AWS
**Currently capable of storing:** Amazon, Shopify, Viglink 
* Product Database/Elastic Search: (Rakuten/Linkshare), working on Shopify Sales Channel integration/approval

## Instagram (Morteza’s project atm)
**Database:** InstaNeo4J
**MightyScout:** Influencer information website, recommendations for other influencers based on 1 sample
* Flatlay is currently paying for this service
* We are building out similar technology for our website
**Technology:** tbd, probably changing to NeoJS/Python


## Annotating products/images
**Function:** Being able to recognize and tag the products in an image
**Tool:** Tensorflow - for machine learning, allows us to use their base models for AI instead of building from scratch, we put in our own data
* 2 dedicated team members working on it



