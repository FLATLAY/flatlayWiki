 <!-- TITLE: Creator User Story -->
<!-- SUBTITLE: A quick summary of Creator User Story -->

# Creator Story (Aliases: User, Influencer)
## Registering and logging in
### Email and Password
User needs to insert: **Email**, **Username**, **Password** to register.
**Email** and **Password** can be used to login. 

### facebook registeration/login
Upon facebook registeration we create a random username which can be changed later on by user

### **Technical hints!**
ℹ️ Upon successful login a JWT token gets generated which can be used throughout all API calls
ℹ️ The creator node on our database is called **User**
ℹ️ Passwords gets hashed with SHA256 and the hash will be stored in db
ℹ️ Facebook login/registeration get validated on backend using graph APIs and access gets verified


## Home Page
After login, the user is lead to the home page which lists down trending posts.

All the posts of the other users that the user has followed them appear on this page, the keyword "**FlatLay**" has been used in the system to refer to the posts.

The navigation bar at the top of the page has displayed.

![Screenshot 154](/uploads/screenshot-154.png "Screenshot 154")

With a click on the "Flatlay" logo, ![11](/uploads/11.png "11") the left panel has appeared.
There are these tabs in the left panel:
Invite campaigns, open campaigns, dscover, messages

**Invite campaigns**:
Every campaign that *Merchant* user has invited *Creator* user, appears here.
The *Creator* user can *approve* or *reject* that campaign, if  user approves campaign, it will join the campaign and then it can send a photo to that campaign. 
When the *Merchant* creates a campaign, it defines what is the purpose of the campaign, and then invites the *Creator* users to join to the campaign and ask them to send  photos according to the purpose.
If *Creator* user *approve* the campaign then it can add contenet to campaign. So the campaign has the photo as the content of the campaign. 
After approval of the "*campaignContent*", the user can send a URL of a social network for the campaign, so the *"originalImageURL"* property is set to that campainContent entity  

![Screenshot 166](/uploads/screenshot-166.png "Screenshot 166")
 
Immediately after the *Creator* user approved or rejected the campaign, rsvp property will be set "true or false". [rsvp: true/fase]

![Screenshot 173](/uploads/screenshot-173.png "Screenshot 173") ![Screenshot 174](/uploads/screenshot-174.png "Screenshot 174")


**Open campaigns**:
*Creator applys for an open campaign*
A *Merchant* can create a public campaign called "**Open campaign**"  and every *Creator* user can see those campaigns.
Merchant sees users who have applied for its campaign (the creator who has applied to the campaign, have a property with "**pending**" value on the *relation* entity)
Merchant can approve or reject an application which turns the properties to:
campaign *[approval:approve]* or campaign *[approval:reject]*

![Screenshot 168](/uploads/screenshot-168.png "Screenshot 168")

**Discover**:
Immediately after going in this portion, the list of the trend of the fatlay is displayed. 
When something searches in the search bar, another *query* for searching in the database is run in this API. 


**Messages**:
Users can send messages to each other in this part.
It uses sendbird for sending messages.

### Search bar
product, people, post are searched in the search bar 

![Screenshot 159](/uploads/screenshot-159.png "Screenshot 159")

### Create collection
The *Creator* user can create a collection of products for itself. 
The user can create a new collection or used from the list of the collection that it has created, then the user can add products to its collection.

![Screenshot 163](/uploads/screenshot-163.png "Screenshot 163")

a collection can be edited and deleted.

### Create post
Users can create a post, the post includes a photo with description.
The post is called ***Flatlay*** and other users can like it or write a comment on it.
After a *comment* or *like* has been posted, an "**isNotified**" property is set in this entity [isNotified: true/fase]. It has explained in the *Notifications* section.

![Screenshot 177](/uploads/screenshot-177.png "Screenshot 177") ![Screenshot 178](/uploads/screenshot-178.png "Screenshot 178")

A user can follow other users and "**isNotified**" property is set in this entity. It  has explained in the *Notifications* section.

![Screenshot 169](/uploads/screenshot-169.png "Screenshot 169")

After a *flatlay* is posted, it can add to the collection, User can choose a collection name from the collection list or create a new collection. User can add products in the specific collection.
The point is, the user can do tag just one *flatlay* on a *collection* .

![Screenshot 192](/uploads/screenshot-192.png "Screenshot 192")

### Account menu
Profile, Notifications, Settings, Support, Logout,  are showed in this menu.

![Screenshot 160](/uploads/screenshot-160.png "Screenshot 160")

**Profile:** 
There is some different stuff in this Portion.
* editing of the user profile here.
Email, Instagram, Twitter, Facebook, pictuer... can be modified in this portion
The number of followers and number of the following, posts appear here and with click on every item, you can see details about that.
With Click on the *followers* or *following*, the list of the *followers* or *following* are displayed.
There is a point for **following**, we used *query string*, if  there is a *Username*  in the query string, it'll show the following of that *Username*, otherwise it'll show the following itself. (with another word if the login user goes to the profile of someone else, this API can support it)

![Screenshot 194](/uploads/screenshot-194.png "Screenshot 194")

* All  posts and all collections of user are displaying here, and the user can switch between two tab [posts/collections] 
In  the collection tab, the list of the collection that the user created them are displayed. 
In every collection, the list of product that user added in, are shown.
Also, when the users viewed the collection, they can do some other activity such as add product to another collection, remove the product from the collection , like products, add the product to cart and buy the product.

![Screenshot 164](/uploads/screenshot-164.png "Screenshot 164")


**Notifications:** 
All notifications is here.
The "isNotified" property has [fase/true], when the owner of the "flatlay", see the notification "isNotified" will turn to "true" .

**Settings: **

**Support:**

**Logout:**

## Facebook


# Brand Story (Aliases: Merchant, Business)

