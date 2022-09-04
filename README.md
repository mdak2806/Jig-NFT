# ** JIG NFT **

You can find the link to the JIG NFT website [here](https://jig-nft.herokuapp.com/). 

## Project Overview
As part of the Software Engineering Immersive program, as General Assembly Project #1 was designed to challenge students to create a website on Rails on Ruby of their own design, the criteria required designed many to many and one to many associations between the different pages. 

## Jig NFT
Jig NFT is a NFT trading platform designed and created by me. The site is dynamic by allowing individuals to Sign-up to the service giving them full access to creating their own NFT's, and similarly buying and selling other users NFT's. 

![Jig NFT Home Page Interface](/Explore Page.jpg)

## Wire-Frame and page associations

Below is an image highlighting the high-level associations between the different pages on the Jig NFT Website.

![Jig NFT Associations](/iScreen Shoter - 2022-09-04 23:46:19.276.jpg)

**User** The User model sits at the very beginning, it has a one-to-many association with Bids, as Users can submit multiple bids whilst each bid is assigned to one specific user. 

Furthermore, there is a one-to-many association with Work. Each User may have multiple NFT’s, but each NFT is associated with one work. 

**Work** The Work Model sits in the middle of the wireframe and has direct associations with all other models. 

Work has a one-to-many model with Bids, as each Work can have multiple bids although each bid is assigned to one Work only. 

Like Properties, each Work has multiple properties although each property is assigned to one Work. 

**Genre** A many to many association is created between Work and Genre. Each Work may have many Genres whilst each Genre may have many Work. Thus, this is the only many to many association within the website. 

## Website layout and Use Case Guide

**Home Page** The home page is kept simple with the main search bar placed in the middle allowing users to search key terms present within the NFT name, description or artist name. Users will be re-directed to the search index highlighting any relevant results. 

**Collections Page** The collections Index showcases all users currently registered on the website. It allows people to find specific user collections and see the Art that they currently own. 

**Genre Page** The Genre Index is an extremely handy feature that allows people to search and discover NFT's based on their specific style and taste. There is broad range of 10 different genres to help break down the data and allow users to browse with ease. 

**Explore Page** The explore page show cases all the current NFTs posted on Jig NFT. This page contains key filter down features to allow users to filter NFT's based on the blockchain they are trading on, the options include Eth, Bit, Sol etc.

The second filter allows users to filter based on rarity of trait. There are three key values High, Medium and Low. Each Property is associated with a ranking, which plays an important role in allowing this filtering process to function. As such if a user would like to see high value NFT's it would be easy to identify and collect. 

**NFT Show Page** The NFT show page presents each individual NFT with all its associations. This includes Genre, Properties, Artist, Description, Owner, Token Id and similarly Price. 

Through this page, you can directly redirect to a specific genre by clicking on the Div. and similarly the Owner collection. This added feature makes this page extremely user friendly and similarly highlights the models presented above. 

Below is a bidding functionality which only allows registered users to make bids on the currently offered NFT. Depending on the price registered a win or lose message is presented. 

Furthermore, if a win situation does occur the transfer of NFT ownership occurs, which is then saved onto the system. 


## Project Status

The project is approximately 80% complete, all essential components are running, although the code can be cut down with repeating variables and commands. Furthermore, the functionality of key functions such as search, filter and bidding are extremely simple. This would require improvements in allowing a greater user experience especially if a larger set of NFTs where to be posted. 

Key warning status and security would need to be reinforced to utilise this website as a secure platform to trade high value items.  

### Project Future Improvements 

- [ ] *Allow the owner of the NFT to approve bid offers rather than a simple metric to transfer ownership.*
- [ ] *Adjust CSS to allow the website to be useable and visually pleasing on a mobile device.* 
- [ ] *Adding a Crypto currency graph below each NFT to highlight the current exchange rate and market conditions.*
- [ ] *More secure platform with real crypto-purchasing ability is required.* 



