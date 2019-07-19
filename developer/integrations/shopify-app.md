<!-- TITLE: Shopify App -->
<!-- SUBTITLE: A quick summary of Shopify App -->

# Shopify App

### OAuth
•	koa-shopify-auth creates a redirect to Shopify OAuth URL and get the access token 
•	The shop name and access token are stored in cache for further use
•	Shopify OAuth URL contains shop name, API key, access scopes and redirect URL
•	The access token get from the OAuth is permanent till user uninstalls and reinstalls
•	For manual OAuth, the code which is get from the callback URL is passed through following API
•	POST https://{shop}.myshopify.com/admin/oauth/access_token 
•	The request body is { client_id, client_secret & code is put in request body }
•	The response is  "access_token" & "scope

### The access token is passed as header
•	X-Shopify-Access-Token header is used in every API call

### Embedded App using Node.js & React
•	server.js: This file contains code for webhooks and API calls for fetching all products from the Shopify admin and send on the server
•	product.js: User is able to view all their products on FLATLAY. If not, product is on FLATLAY, “Add Product” button allows them to add new products.
•	brands.js: This page gives brief about brands and link to brands page on flatlay.io
•	creatives.js: This page gives brief about creatives and link to creatives page on flatlay.io

### Product.js
•	Get Product Listing API of Shopify gives all products listed on FLATLAY and are shown in form of list on this page.
•	GET /admin/api/2019-04/products.json API returns the list of products
•	Title, price, sku and quantity is shown in list for every product.
•	Below is the API curl used to get product listing

```swift
curl -X POST \
  https://r4qwnd5837.execute-api.us-west-2.amazonaws.com/v1/shopify \
  -d 
  '{
    "url": "https://thisisnsh.myshopify.com/admin/api/2019-07/product_listings.json",
    "accessToken":"414321412"
  }'

```


### Server.js
•	Add, Delete & Update Product Listing Webhook is put on this page.
•	Get Product API returns all products present in the shop and Put Product Listing API allows putting those products on FLATLAY using their product ID
•	GET /admin/api/2019-04/product_listings.json API returns the list required with products listed on FLATLAY
•	The access token stored in cache is also synced with the database.
•	This access token is used as header in other API calls and can be GET by CURL 'https://r4qwnd5837.execute-api.us-west-2.amazonaws.com/v1/shopify?url=thisisnsh.myshopify.com'


