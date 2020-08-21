CREATE (n:User {label: "User"}) RETURN n
CREATE (n:Category {label: "Category"}) RETURN n
CREATE (n:Flatlay {label: "Flatlay"}) RETURN n
CREATE (n:Brand {label: "Brand"}) RETURN n
CREATE (n:Collection {label: "Collection"}) RETURN n
CREATE (n:creditCard {label: "CreditCard"}) RETURN n
CREATE (n:Address {label: "Address"}) RETURN n
CREATE (n:instagramList {label: "instagramList"}) RETURN n
CREATE (n:campaign {label: "Campaign"}) RETURN n
CREATE (n:campaignContent {label: "CampaignContent"}) RETURN n
CREATE (n:product {label: "Product"}) RETURN n
CREATE (n:cart {label: "Cart"}) RETURN n
CREATE (n:instagram {label: "Instagram"}) RETURN n
CREATE (n:basicList {label: "basicList"}) RETURN n
CREATE (n:campaignPhoto {label: "CampaignPhoto"}) RETURN n
CREATE (n:comment {label: "Comment"}) RETURN n
CREATE (n:merchant {label: "Merchant"}) RETURN n
CREATE (n:agency {label: "Agency"}) RETURN n

MATCH (n:User {label: "User"}), (a:Flatlay {label: "Flatlay"}) MERGE (n)-[r:likes]->(a)
MATCH (n:User {label: "User"}), (a:User {label: "User"}) MERGE (n)-[r:follows]->(a)
MATCH (n:User {label: "User"}), (a:Flatlay {label: "Flatlay"}) MERGE (n)-[r:report]->(a)
MATCH (n:User {label: "User"}), (a:Flatlay {label: "Flatlay"}) MERGE (n)-[r:has]->(a)
MATCH (n:User {label: "User"}), (a:cart {label: "Cart"}) MERGE (n)-[r:hasCart]->(a)
MATCH (n:User {label: "User"}), (a:Brand {label: "Brand"}) MERGE (n)-[r:followsBrand]->(a)
MATCH (n:User {label: "User"}), (a:creditCard {label: "CreditCard"}) MERGE (n)-[r:hascreditCard]->(a)
MATCH (n:User {label: "User"}), (a:campaignContent {label: "CampaignContent"}) MERGE (n)-[r:hasCampaignContent]->(a)
MATCH (n:User {label: "User"}), (a:campaign {label: "Campaign"}) MERGE (n)-[r:applied]->(a)
MATCH (n:User {label: "User"}), (a:Address {label: "Address"}) MERGE (n)-[r:hasaddress]->(a)
MATCH (n:User {label: "User"}), (a:instagram {label: "Instagram"}) MERGE (n)-[r:ownInstagram]->(a)
MATCH (n:User {label: "User"}), (a:Category {label: "Category"}) MERGE (n)-[r:followsCategory]->(a)
MATCH (n:User {label: "User"}), (a:Collection {label: "Collection"}) MERGE (n)-[r:hasCollection]->(a)
MATCH (n:User {label: "User"}), (a:comment {label: "Comment"}) MERGE (n)-[r:writeComment]->(a)
MATCH (n:User {label: "User"}), (a:product {label: "Product"}) MERGE (n)-[r:productLike]->(a)
MATCH (n:User {label: "User"}), (a:product {label: "Product"}) MERGE (n)-[r:wishList]->(a)

MATCH (n:Collection {label: "Collection"}), (a:Flatlay {label: "Flatlay"}) MERGE (n)-[r:hasCollectionTag]->(a)
MATCH (n:Collection {label: "Collection"}), (a:product {label: "Product"}) MERGE (n)-[r:hasProduct]->(a)

MATCH (n:Flatlay {label: "Flatlay"}), (a:Category {label: "Category"}) MERGE (n)-[r:IS_RELATED_TO]->(a)
MATCH (n:Flatlay {label: "Flatlay"}), (a:comment {label: "Comment"}) MERGE (n)-[r:hasComment]->(a)
MATCH (n:Flatlay {label: "Flatlay"}), (a:product {label: "Product"}) MERGE (n)-[r:hastag]->(a)

MATCH (n:product {label: "Product"}), (a:comment {label: "Comment"}) MERGE (n)-[r:hasCommentOnProduct]->(a)
MATCH (n:product {label: "Product"}), (a:cart {label: "Cart"}) MERGE (n)-[r:addToCart]->(a)

MATCH (n:merchant {label: "Merchant"}), (a:agency {label: "Agency"}) MERGE (a)-[r:hasMerchant]->(n)
MATCH (n:merchant {label: "Merchant"}), (a:basicList {label: "basicList"}) MERGE (n)-[r:hasList]->(a)
MATCH (n:merchant {label: "Merchant"}), (a:campaign {label: "Campaign"}) MERGE (n)-[r:hasCampaign]->(a)
MATCH (n:merchant {label: "Merchant"}), (a:instagramList {label: "instagramList"}) MERGE (n)-[r:hasInstagramList]->(a)


MATCH (n:campaign {label: "Campaign"}), (a:campaignPhoto {label: "CampaignPhoto"}) MERGE (n)-[r:hasPhoto]->(a)
MATCH (n:campaign {label: "Campaign"}), (a:basicList {label: "basicList"}) MERGE (n)-[r:invited]->(a)
MATCH (n:campaign {label: "Campaign"}), (a:instagramList {label: "instagramList"}) MERGE (n)-[r:invited]->(a)
MATCH (n:campaign {label: "Campaign"}), (a:User {label: "User"}) MERGE (n)-[r:invite]->(a)
MATCH (n:campaign {label: "Campaign"}), (a:campaignContent {label: "CampaignContent"}) MERGE (n)-[r:hasContent]->(a)
MATCH (n:campaign {label: "Campaign"}), (a:Address {label: "Address"}) MERGE (n)-[r:shipping]->(a)

MATCH (n:instagramList {label: "instagramList"}), (a:instagram {label: "Instagram"}) MERGE (n)-[r:hasInstagram]->(a)
