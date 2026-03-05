# Property Deal
- Store and Manage A Property Deal Center Data. Users can post their property, other user can make offer, and if aggreed they make a deal, from thid deal an amount is given to the system owner. 

## Tech Stack: 
- MySQL

## Data Model: 
- **Entities & Attributes (Constraints, Indexes):**

  - **Users**
    - email (pk)
    - fullName (not null, letter and space only, indexed)
    - phone (null allowed, digits only, length 13, starts with 0093)
    - city (not null)
    - district (null allowed)
    - street (nul allowed)
    - timestamp: create/update
    
  - **Categories**
    - name (pk)
    - description (not null)
    - timestamp: create/update

  - **Properties**
    - id (Pk, auto increment)
    - name (not null)
    - description (null allowed)
    - category (not null, fk:Categories.name)
    - owner (not null, fk:Users.email)
    - price (not null, min=0)
    - imageURL (not null)
    - negotiable (not null)
    - timestamp: create/update

  - **Offers**
    - id (pk)
    - property (not null, fk:properties.id)
    - user (not null, fk:Users.email)
    - amount (not null, min=0)
    - timestamp: create/update

  - **Deals**
    - id (pk)
    - property (not null, fk:Properties.id)
    - date (not null)
    - amount (not null, min=10)
    - timestamp: create/update

  - **Payments**
    - deal (pk. fk:Deals.id)
    - amount (not null, derived from Deals)
    - timestamp: create/update

- **Relationships**




## Entity–Relationship Diagram: