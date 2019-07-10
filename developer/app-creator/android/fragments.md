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

> **Important**
> setData method either gets product from bundle or fetchs info from the product ID which is passed on from any other fragment


* **API**
* ProductBasedOnBrandApi.getProductsBasedOnCollectionList
* ProductInfoAPI.getProductsInfo
* CartApi.getCartList
* CartApi.addToCart
* CollectionApi.addProductInCollection
* CollectionApi.deleteProductFromCollection
* CollectionApi.addNewCollection
* GeneralSearchApi.searchProduct

* **Model**
* Product..1..2..3

### FragmentHotSection & FragmentInspirationSection

* These two fragments show posts from trending section and feed section respectively

* **API**
* InspirationFeedRes.getFlatlays
* DeletePostApi.removePost
* InspirationFeedApi.getTrendingFlatlay
* InspirationFeedApi.getFlatlay

* **Adapter**
* HotAdapter
* InspirationAdapterNew

* **Model**
* Flatlay

### FragmentInspirationDetail

* This fragment shows the post in details with all comments and products

* **API**
* DeletePostApi.removePost
* ProductInfoAPI.getProductsInfo
* InspirationSectionApi.getComments
* FollowUserApi.followUser
* FollowUserApi.unFollowUser
* MyProfileApi.getUserProfileDetail
* InspirationSectionApi.postLike
* InspirationSectionApi.removeLike
* InspirationSectionApi.postComment
* InspirationSectionApi.removeComment

* **Adapter**
* InspirationCommentsUI

* **Model**
* Comment

### MyFeedCollectionFragment & OtherFeedCollectionFragment

* These fragments show the posts and collection of the current user and other users resp.

* **API**
* MyProfileApi.getUserProfileDetail
* InspirationFeedApi.getUserFlatlay
* CollectionApi.getCollectionList

* **Adapter**
* ProductDetailGridAdapter
* InspirationGridAdapter
* FragmentProfileCollectionAdapter

* **Model**
* Collection1
* Product
* Flatlay

### NotificationListFragment

* This fragment shows notifications to the user

* **API**
* NotificationSettingsApi.getNotificationStatus

* **Adapter**
* KikrFollowingAdapter

* **Model**
* NotificationRes

### ProfileChoiceFragment

* This is the settings section in the user profile where the user gets an option to complete his profile and modify existing details

* **API**
* EditProfileApi.updateInterest
* EditProfileApi.addUsername
* EditProfileApi.checkUsername

### SearchProductFragment...1...2 

* These fragments serves the purpose of searching products with different UI accross the app

* **API**
* FeaturedTabApi.getFeaturedTabData
* SearchAllApi.searchPeople
* SearchApi.searchProduct

* **Adapter**
* ProductSearchGridAdapter
* FeaturedTabAdapter
* CustomizeInterestPeopleListAdapter

* **Model**
* User
* AffiliateProduct
* User1
* Flatlay

### SocialAccountFragment

* This fragment serves the purpose of syncing the social tokens to the user profile
* This has a separate doc in creator-portal

### ViewInsProductFragment

* Users can see all products in a collection and have various options like delete collection, delete product, rename a collection

* **Adapter**
* AllInsProductAdapter

* **Model**
* Product

### WalletCardFragment

* This fragment shows the stripe cards and gives option to add more cards 

### GenInfoFragment

* This fragment allows users to add/update existing personal information

* * **API**
* EditProfileApi.updateUser



