# README

**Capstone Project Option 1: Cafeteria Management**
Build a cafeteria management system with Rails, PostgreSQL, HTML, and CSS.
Link :https://savita-cafe-management.herokuapp.com/

---

Test Owner account Id - test@cafe.com, password : 123

---

**Persona**
Before we talk about the exact features you should be building, let us understand the concept of a "persona". There are three personas in our Cafeteria system:

Cafeteria Owner: the owner needs complete access of the system. They will add and update stock, create invoices, see all reports and so on.
Online Customer: A customer who want to place an order online would want to see a menu from which they can place an order. They would want to see the invoice details and status of their order, but they should not see anything else about the system.
Cafeteria Billing Clerk: The billing clerk is the person taking customer orders directly from the counter. They should be able to create new invoices, print them, and see order status. However they should not be able to modify item details or see reports like income since they should be seen only by the owner.
Online Customer Persona

---

**User Stories**
Online Customer persona
This is a regular customer who visits your website. They want to be able to place orders, see the status of their active order, and see the history of all the orders they placed.

**1. Customer should be able to Sign-up**

If they don’t already have an account, they should be able to sign-up first.
If they are an existing user, they should be able to sign-in with their email and password.
They should also be able to sign-out if they want to. 2. Customer can see the menu and add items to cart

Signed-in customers should be able to see the menu of the food items they can buy.
For each menu item, they should be able to click an “Add” button to add 1 quantity of the item to the cart. Once an item is added to a cart, they should be able to click + or - to add or remove its quantity. 3. Customer should be able to see the cart while ordering

The cart, otherwise called “shopping cart”, is where the items the customer has so far selected is kept.

The cart must always be visible to the customer while they are ordering from the menus page.

This is so that they don’t get confused about what they’ve already ordered and what is remaining. If they have to go to a different page to see the cart then it is very poor user experience.

The cart should show the list of items added, their quantities, their total cost (quantity \* unit price), and the total bill amount.

4. Customer can finalize the order with a “checkout” button

There should be a “Checkout” button clearly visible in the ordering page. The customer clicks it once they are done adding all the menu items they want.
In the Checkout page, they should be shown the cart once again, and asked to “Confirm and place the order”.
When the order is confirmed and placed, the items should be moved from their cart, and made into Order and OrderItems.
All new orders go into a queue of orders, and are by default “pending delivery”. 5. Customer can see the status of orders

A new order is always “pending delivery”. Once the owner/clerk marks it as “delivered”, the customer should be able to see it marked as such.
(optional feature) Customer should see a summary of all the orders they’ve so far placed. They should be able to click on an order and see its details. 6. The shopping cart should be durable and available across sessions

Imagine I sign-in as a customer in Chrome, and add two items to my cart. Then if I sign-in as the same customer in Firefox, I should see both the items I’ve already added to the cart there. Any changes I make in one place should be available in another (after manually refreshing the page).

If I clear my browser history including cookies, I should still be able to see my shopping cart once I log-in back again.

**Cafeteria Billing Clerk**
Billing clerks can only sign-in and sign-out. They cannot sign-up by themselves. Their accounts can be created only by the owner.

1. Clerk can mark orders as delivered. They can see the list of all pending orders from the queue of orders. They can also mark orders as “delivered”.

2. Clerk can create orders for offline customers. Billing clerks can create orders, just like regular customer. However, all orders created by billing clerks will be assigned to a default “Walk-in customer”.

**Cafeteria Owner**
Nobody can sign-up as an owner. Instead, the live application should come with an owner already created.

(optional) An owner can create other owners.

1. Owner can manage the menu

The Cafeteria has a single menu. This menu is shown to the users.

The menu is organized as a collection of MenuCategories. A MenuCategory can be headings like Breakfast, Lunch, Indian Breads, North Indian, South Indian, Main Course, Desserts, and so on.

Each MenuCategory will have multiple MenuItems. The MenuItem will have a name, description, picture (optional), and price per quantity.

In MenuCategories, the owner will be able to:

See all existing categories
Create a new one
Update the name of a category
Mark one as active/inactive.
For example some restaurants disable their Breakfast menu after 11am. This feature will help with that.
For each MenuCategory, the owner will be able to:

See the list of items in the category (MenuItem)
Add a new item to the menu
Delete or update an existing item 2. Owner can see reports

Sale Reports for any given date range. It should list all invoices in that range, name of the customer, and total invoice details. It should be possible to click on any invoice and go to that invoice.
Owner can see details of a single invoice
Owner can see all the orders made by any given customer in a date range. 3. Owner can manage users

Owner can see the list of all users - customers, billing-clerks, and other owners.

They can create and update billing clerks and owners. They cannot create customers, because customers have to sign-up by themselves.

**All Users**
(optional feature) All users should be able to change their password
