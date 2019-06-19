<!-- TITLE: Fragments -->
<!-- SUBTITLE: A quick summary of Fragments -->

# Fragments (In use) A-Z

### CartAddressFragment

* This fragment allows the user to add new delivery address and view already added address

* **API:** 
* AddressApi.addAddress 
* AddressApi.getAddressList

* **Adapter**
* ShippingAddressList

* **Model**
* Address
* Address1

### CartCardFragment

* This fragment allows users to add credit card to stripe and view already added card to stripe

* **API**
* TBD

* **Adapter**
* CardGridAdapter

* **Model**
* Card
* Card1

### CartConfirmFragment

* This fragment allows users to review their order and place order through Shopify Payments

* **API**
* TBD

### CartListFragment

* This fragment allows users to see their wishlisted products.
* They can directly press buy now to go to checkout process or tap on individual image to see full product details

* **API**
* CartApi.getCartList
* CartApi.removeFromCart
* ProductInfoAPI.getProductsInfo

### EditImageFragment & FiltersListFragment

* Fragments to add filter to image

### First..Second...SeventhFragment

* Each of these fragments contain a different splash info screen

### FollowersFragment & FollowingFragment

* These fragments allow user to view his own followers and following users by tapping on the respective count in MyFeedCollectionFragment

* **API**
* FollowUserApi.getFollowers
* FollowUserApi.getFollowing

* **Adapter**
* KikrFollowingAdapter

* **Model**
* FollowUserRes

### FragmentDiscoverDetail

* This fragment shows the product full view where user can create collection and add products to them
* Also they can view on website or purchase it

> * Important
> asafasfasasf 


* **API**
* ProductBasedOnBrandApi.getProductsBasedOnCollectionList
* ProductInfoAPI.getProductsInfo
* 