<!-- TITLE: Sendbird -->
<!-- SUBTITLE: A quick summary of Sendbird -->

# Sendbird

### Initialize the SDK 
•	Done in KikrApp.java using the Sendbird app_id 

### Connect to Sendbird Server using the “user_id”
•	Connection is made to the server every time before using any SDK function

### Retrieve list of all channel in which “user_id” is a member
•	The list of the GroupChannel is returned after using GroupChannelListQuery.
•	GroupChannel is an object from which we show the nickname and profile picture of the member who sent the first message.
•	This is because first message is always sent by the merchant.
•	LastMessage is type casted as UserMessage and the “message” is displayed along with the “created_at” for time.
•	The data is shown in SendbirdFragment.java
•	The adapter used is SendbirdAdapter.java

### Get messages of a group
•	PreviousMessageListQuery returns old message with “message” and “sender” information.
•	The messages are shown in MessageFragment.java and adapter used is MessageAdapter.java
•	List returned is of “BaseMessage” which is to be type casted as UserMessage to show required data.

### Send Message in a channel
•	Message is sent using “sendUserMessage” function of GroupChannel which takes UserMessageParams

### Add channel handler
•	Use “addChannelHandler” function of GroupChannel to receive a callback as soon as message is updated on server.
•	This handler is present in Message and Sendbird Fragment where in MessageFragment it updates the messages from the sender and receiver's side
•	In SendbirdFragment is updates the unread count and increaments the time and updates the last message seen in the adapters.

### FCM Android
•	The server key from Firebase is registered on Sendbird and the notifications are handled by them
•	When the data from notification is received by the device the app logo, message, and sender name is displayed with max priority in the device
•	Pending Intents in notification take directly into the message screen where the user can continue the chat

