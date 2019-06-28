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

**Invite campaigns**:
Every campaign that Merchant user has invited creative user, appears here.
The creative user can *approve* or *reject* that campaign, if  user approves campaign, it will join the campaign and then it can send a photo to that campaign. 
W hen the Merchant creates a campaign, it defines what is the purpose of the campaign, and then invites the creative users to join to the campaign and ask them to send  photos according to the purpose.
If creative user *approve* the campaign then it can add contenet to campaign.
Merchant user invites a creative user to a special campaign the creative user approve and send a photo to the campaign, so the campaign has the photo as the content of the campaign.

![Screenshot 166](/uploads/screenshot-166.png "Screenshot 166")
 
Immediately after the "*creative user*" approved or rejected the campaign, rsvp property will be set "true or false". [rsvp: true/fase]

![Screenshot 173](/uploads/screenshot-173.png "Screenshot 173") ![Screenshot 174](/uploads/screenshot-174.png "Screenshot 174")


**Open campaigns**:
*Creator applys for an open campaign*
A Merchant can create a public campaign called "Open campaign"  and every creative user can see those campaigns.
Merchant sees users who have applied for its campaign (campaigns who has applied relation with users with value pending)
Merchant can approve or reject an application which turns the properties to:
campaign *[approval:approve]* or campaign *[approval:reject]*
![Screenshot 168](/uploads/screenshot-168.png "Screenshot 168")
**Discover**:
Those users and Flatlays  that are..

**Messages**:
Users can send messages to each other in this part

### Search bar
product, people, post are searched in the search bar 

![Screenshot 159](/uploads/screenshot-159.png "Screenshot 159")

### Create collection
The creative user can create a collection of products for itself. 
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

### Account menu
Profile, Notifications, Settings, Support, Logout,  are showed in this menu.

![Screenshot 160](/uploads/screenshot-160.png "Screenshot 160")

**Profile:** 
There is some different stuff in this Portion.
* editing of the user profile here.
Email, Instagram, Twitter, Facebook, pictuer... can be modified in this portion

![Screenshot 165](/uploads/screenshot-165.png "Screenshot 165")

* All  posts and all collections of user are displaying here, and the user can switch between two tab [posts/collections] 

![Screenshot 164](/uploads/screenshot-164.png "Screenshot 164")


**Notifications:** 
All notifications is here.
The "isNotified" property has [fase/true], when the owner of the "flatlay", see the notification "isNotified" will turn to "true" .

**Settings: **

**Support:**

**Logout:**

## Facebook


# Brand Story (Aliases: Merchant, Business)

