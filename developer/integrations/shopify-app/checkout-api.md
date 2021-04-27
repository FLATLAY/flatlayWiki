<!-- TITLE: Checkout Api -->
<!-- SUBTITLE: A quick summary of Checkout Api -->

# Shopify Product Checkout
> *This process should include one product for creating a checkout

### Steps:

#### 1. Create Checkout, for creating checkout call api:

`curl --location --request POST 'https://dev.flatlay.io/checkout' \
--header 'authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFsaXJlemEuZXNAZ21haWwuY29tIiwidXNlcklkIjoiNjE0NzMiLCJpYXQiOjE2MTE3NTg4MDMsImV4cCI6MTYxNjk0MjgwM30.gYN218tK51xd_3y4LseMdEGFIzbOSpp78LwGrPGvKO4' \
--header 'Content-Type: application/json' \
--data-raw '{
   "shopName":"paxsun.myshopify.com",
   "checkoutItem":{
       "checkout": {
       "billing_address": {
       "address1": "1545  Browning Lane",
       "city": "Jasper Cityt",
       "country": "US",
       "province": "New York",
       "zip": "14855",
       "first_name": "Nishant",
       "last_name": "Hada"
   },
   "shipping_address": {
       "address1": "1545  Browning Lane",
       "city": "Jasper Cityt",
       "country": "US",
       "province": "New York",
       "zip": "14855",
       "first_name": "Nishant",
       "last_name": "Hada"
   },
   "line_items": [
     {
       "variant_id":6851491037214,
       "quantity": 1
     }
   ]
 }
   }}'`
	 
	 
	 In this API you should send the following items:
* shop name of the product which we have in product detail like "paxsun.myshopify.com"
* inside  checkoutItem, we have checkout object, checkout object contain shipping_address, billing_address, and line_items (billing_address,shipping_address are not required to be sent in this step, they can be pass in another step too)

when you create the checkout the response is the same object that you have sent with the token that has been created for this checkout, ***you should keep this token to continue this process***.

#### 2. after creating checkout and setting the address we should set the shipping rate, base on the selected product we show a list of option that user can have


```text
`curl --location --request POST 'https://dev.flatlay.io/checkout/getshippingrates' \
--header 'authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFsaXJlemEuZXNAZ21haWwuY29tIiwidXNlcklkIjoiNjE0NzMiLCJpYXQiOjE2MTE3NTg4MDMsImV4cCI6MTYxNjk0MjgwM30.gYN218tK51xd_3y4LseMdEGFIzbOSpp78LwGrPGvKO4' \
--header 'Content-Type: application/json' \
--data-raw '{
   "shopName":"paxsun.myshopify.com",
  "checkoutId":"88ddde765ccdd29a0980fdbbb53a5abf"
  
}'
`
```


In this API you should send the following items:
* shop name
* checkoutId: a token that was the response of creating checkout.

#### 3. The next step is to set the selected shipping rate for checkout, this API is for update checkout and we can use it to set or update the shopping address


```text
`curl --location --request POST 'https://dev.flatlay.io/checkout/update' \
--header 'authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFsaXJlemEuZXNAZ21haWwuY29tIiwidXNlcklkIjoiNjE0NzMiLCJpYXQiOjE2MTE3NTg4MDMsImV4cCI6MTYxNjk0MjgwM30.gYN218tK51xd_3y4LseMdEGFIzbOSpp78LwGrPGvKO4' \
--header 'Content-Type: application/json' \
--data-raw '{
   "shopName":"paxsun.myshopify.com",
   "checkoutId":"5deed0197786b4676018f2baeb28703a",
   "checkoutItem":{
   "checkout":{
   "token": "5deed0197786b4676018f2baeb28703a",
       "shipping_line":
       {
           "handle": "shopify-Free%20Shipping-0.00"
       }
}}}'`
```



In this API you should send the following items:
* shop name
* checkoutId
* shipping_line is the selected shipping rates

#### 4. for the final step after setting all properties, call the "payment"  API for creating a payment, before creating the payment, the user should select a card for pay. 


```text
`curl --location --request POST 'https://dev.flatlay.io/payment' \
--header 'authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFsaXJlemEuZXNAZ21haWwuY29tIiwidXNlcklkIjoiNjE0NzMiLCJpYXQiOjE2MTE3NTg4MDMsImV4cCI6MTYxNjk0MjgwM30.gYN218tK51xd_3y4LseMdEGFIzbOSpp78LwGrPGvKO4' \
--header 'Accept-Language: en-US,en;q=0.9' \
--header 'Content-Type: application/json' \
--data-raw '{
   "shopName":"paxsun.myshopify.com",
   "checkoutId":"5deed0197786b4676018f2baeb28703a",
   "customerId":"cus_IvToU5eNcdD15k",
   "cardId":"card_1IK62hDHP9PnFF5Dsul5mEnN"
}'`
```


In this API you should send the following items:
* shop name
* checkoutId
* customerId: id of user in stripe
* cardId: in stripe, we have a card registered for the user








