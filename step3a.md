# Step 3a

## Tables


### Customers -

    Customer_Name
    Phone_Num
    Birth_Date
    Address
    primary key (phone_Num)


### CustomerReviews -

   Customer_Name
   Review

### Products -

    Product_ID
    Product_Name
    Number_Sold
    Most_Popular_Month


### Grocery -

  Grocery_Name
  Grocery_Price
  Grocery_ID
  Country_Of_Origin
  In_Stock


### Produce -

  Produce_Name
  Produce_Price
  Produce_ID
  Country_Of_Origin
  In_Stock


### Toiletries -

   Toiletries_Name
   Toiletries_Price
   Toiletries_ID
   Country_Of_Origin
   In_Stock


### GeneralMerchandise -

   GeneralMerchandise_Product_Name varchar(15) not null, -- 15 represents the amount of characters
   GeneralMerchandise_Price varchar(7) not null,
   GeneralMerchandise_ID char(9),
   Country_Of_Origin character varying(50),
   In_Stock varchar(4) not null

### Shopping_Cart -


   Customer_Name varchar(15) not null, -- 15 represents the amount of characters
   Order_ID char(4),
   Address varchar(30),
   Category_Purchased varchar(50) not null,
   SubCategory_Purchased varchar(50) not null,
   Shipping_Options varchar(15) not null,
   Payment_Type char(4)

