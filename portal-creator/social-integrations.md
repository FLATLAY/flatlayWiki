<!-- TITLE: Social Integrations -->
<!-- SUBTITLE: A quick summary of Social Integrations -->

# Integrated Social Medias

### Instagram

* Run on Browser: https://api.instagram.com/oauth/authorize/?client_id=0c38cad2d6124a22bf1025ef88f6d72a&redirect_uri=http://www.flat-lay.com&response_type=token
* Save "access_token" from Callback: flat-lay.com/#access_token= 
* Request: GET https://api.instagram.com/v1/users/self?access_token=**access_token**
* Response: "id", "username" & "profile_picture"

### Twitter

* Consumer: 5tQwAp0Z802BLmdF709OEsnLD
* Consumer Secret: 1RLaG0VSYdTXHfSRppPvVp3K7cE1T5q4QiUGLxrtbiFgv3t0W8
* Token: 711380009303171073-sfDYKoFa8SEVFSkPykBu4zMZbRTfGVk
* Token Secret: RVm9XV26vNOmaoeTllQKl8dl7VMu9t0pgnAC44F1gPnVm

* Request: POST OAuth 1.0  https://api.twitter.com/oauth/request_token 
* Response: "oauth_token" 
* Run on Browser: https://api.twitter.com/oauth/authorize?oauth_token=**oauth_token**
* Save "oauth_verifier" & "oauth_token"
* Request: POST https://api.twitter.com/oauth/access_token?oauth_verifier=**oauth_verifier**&oauth_token=**oauth_token**
* Response: username, access_token, refresh_token, id

### Pinterest

* Run on Browser: https://api.pinterest.com/oauth/?response_type=code&redirect_uri=https://flat-lay.com/&client_id=4841772085915168467&scope=read_public,write_public&state=768uyFys
* Callback: flat-lay.com/?state=
* Save "code" 
* Request: POST https://api.pinterest.com/v1/oauth/token?grant_type=authorization_code&client_id=4841772085915168467&client_secret=f9526d084e960a52f71fe14cd6b006e76cef69563c83dba98f17c8af8bfc26ed&code=**code**
* Response: "access_token"

### Twitch

* Run on Browser: https://id.twitch.tv/oauth2/authorize?response_type=token&client_id=vf9bhvachdaru826840knr3o2nx9xr&redirect_uri=http://www.flat-lay.com&scope=analytics:read:extensions+analytics:read:games+bits:read+channel:read:subscriptions+clips:edit+user:edit+user:edit:broadcast+user:read:broadcast+user:read:email&state=c3ab8aa609ea11e793ae92361f002671
* Callback: flat-lay.com/#access_token=
* Save "access_token"

### Snapchat

* Run on Browser: https://accounts.snapchat.com/accounts/oauth2/auth?client_id=fb2256be-f689-4113-a06a-95b32781ec16&response_type=code&scope=https%3A%2F%2Fauth.snapchat.com%2Foauth2%2Fapi%2Fuser.display_name%20https%3A%2F%2Fauth.snapchat.com%2Foauth2%2Fapi%2Fuser.bitmoji.avatar&state=2234567890&redirect_uri=https://www.flat-lay.com/
* Callback: flat-lay.com/?code=
* Save "code"

* Request: POST https://accounts.snapchat.com/accounts/oauth2/token
* Header: "Authorization" : "Basic ZmIyMjU2YmUtZjY4OS00MTEzLWEwNmEtOTViMzI3ODFlYzE2Ok1VdVNyWHV4QUE0bVhJYlJfVEUzWG9ZRFBIazNRMlpTSDM0SDdfNXpqbXM="
* Header: "Content-Type": "application/x-www-form-urlencoded"
* Parameter: "grant_type" : "authorization_code"
* Parameter: "code" : **code**
* Parameter: "redirect_uri" : "https://www.flat-lay.com/"
* Parameter: "client_id" : "fb2256be-f689-4113-a06a-95b32781ec16"
* Response: "access_token", "refresh_token"

### Youtube

* Run on Browser: https://accounts.google.com/o/oauth2/v2/auth?scope=https://www.googleapis.com/auth/youtube.force-ssl&include_granted_scopes=true&state=97600299124497862398746&redirect_uri=http://www.flat-lay.com&response_type=token&client_id=349707998897-qon7lhgu8l7ape0bc0fvka51ghv9tv4p.apps.googleusercontent.com
* Callback: flat-lay.com/#state=
* Save: "access_token"
								
								