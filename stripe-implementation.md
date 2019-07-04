<!-- TITLE: Stripe Implementation -->
<!-- SUBTITLE: A quick summary of Stripe Implementation -->

# Header

1. Check if "customerID" is null in GET /user/:user_id
2. If its null then create new customer and store as "customerID" in PUT /user/:user_id

curl -X POST \
  https://api.stripe.com/v1/customers \
  -H 'Accept: */*' \
  -H 'Authorization: Basic c2tfdGVzdF80ZUMzOUhxTHlqV0Rhcmp0VDF6ZHA3ZGM6' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -H 'Host: api.stripe.com' \
  -H 'Postman-Token: df8c2c44-3434-476d-a36b-9e55bd401bc5,9c1d0d7f-8171-4bfa-98a7-9fd486c5a282' \
  -H 'User-Agent: PostmanRuntime/7.15.0' \
  -H 'accept-encoding: gzip, deflate' \
  -H 'cache-control: no-cache' \
  -H 'content-length: ' \
  -H 'content-type: application/x-www-form-urlencoded'

3. Create card token

curl -X POST \
  https://api.stripe.com/v1/tokens \
  -H 'Postman-Token: 1f110e07-00c1-481b-b130-322ef44b967d' \
  -H 'cache-control: no-cache' \
  -d 'card%5Bnumber%5D=4242424242424242&card%5Bexp_month%5D=12&card%5Bexp_year%5D=2020&card%5Bcvc%5D=123'

4. Save card token to customer

curl -X POST \
  https://api.stripe.com/v1/customers/{CUSTOMER ID WHICH YOU GOT FROM CREATE CUSTOMER OR GET USER API}/sources \
  -H 'Postman-Token: 59212216-d150-45d1-874e-6a81fbe18dc5' \
  -H 'cache-control: no-cache' \
  -d source=TOKEN WHICH YOU WILL GET FROM CREATE CARD TOKEN API. 

example token = tok_1En4k72eZvKYlo2CFZHQbUO9


5. Get all card of customr

curl -X GET \
  'https://api.stripe.com/v1/customers/CUSTOMER ID/sources?object=card' \
  -H 'Postman-Token: 68310b69-5526-48fb-9636-ecc24b572af5' \
  -H 'cache-control: no-cache'

-------------------------------------

NOW FOR SHOPIFY

6. Create card token 

curl -X GET \
  https://api.stripe.com/v1/tokens \
  -H 'Postman-Token: 27458838-f0af-4112-a6e3-f12ce297e79b' \
  -H 'Stripe-Account: {{CONNECTED_STRIPE_ACCOUNT_ID}}' \
  -H 'cache-control: no-cache' \
  -d customer=CUSTOMER ID

CONNECTED_STRIPE_ACCOUNT_ID will be available when we create checkout in shopify..
