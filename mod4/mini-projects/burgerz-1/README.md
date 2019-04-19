# WELCOME TO THE BOUNTIFUL BURGER APP

This app is your first step towards becoming the world's greatest burger connoisseur. Your app should be able to:
 - List the names of your burgers in a BurgerList
 - When clicking on the 'Show' button below a burger, it should display more info about the burger in the BurgerDisplay area
   - More info includes the burger category and its image
 - Selecting the dropdown filter should allow you to filter the BurgerList by category
 - BONUS: Changing the burger category on the BurgerDisplay should persist the change to the backend
 - BONUS: Clicking the Hide button should delete the burger from the list (this does **not** need to persist)

## EXAMPLE:
![Showcasing the full functionality](burgerz-example.gif)

### STEP 1: VIEW THE DATA
All of the burger data is stored in the db.json file. You'll want to access this data using a json server. In order to do this, run the following command:
  - npm install -g json-server
  - json-server --watch db.json

This will setup the data on a server using restful routes at http://localhost:3001/burgers.

Go to that url in your browser to view the data.

### STEP 2: ADD BURGERS TO BURGERLIST
On page load, make a fetch
to get all of the burger data. When you have this information, render the burger names to the BurgerList.

### STEP 3: DISPLAY INFO ABOUT EACH BURGER ON CLICK
When a user clicks on the 'Show' button below a burger in the BurgerList, that burger's info (image, name, and category) should display in the BurgerDisplay component.

The category should display as a dropdown, with the default value set to the category of the burger. (e.g. The dropdown of the Veggie Burger should have Relatable as the default display value.)

### STEP 4: FILTER BURGERS BY CATEGORY
 When a user changes the value of the select dropdown above the BurgerList, the burgers displayed in the list should change accordingly:

 - the 'All' option should display all burgers
 - the 'Bougie' option should display only Bougie burgers
 - the 'Relatable' option should display only Relatable burgers

### BONUS: CHANGE BURGER CATEGORY
  The burger category displays as a select dropdown in the BurgerDisplay component. When a user changes the value of the dropdown, this change should persist.

  For example, if a user changes the category of 'Veggie Burger' from Relatable to Bougie, then this change should still be reflected on the page upon refresh.

### BONUS 2: HIDE BURGERS FROM THE LIST
  When a user clicks on the 'Hide' button of a burger on the BurgerList, it should delete the burger's name from the list. This change does **not** need to persist to the backend.
