# Step 5 - Flask interface
# Conner Mayfield

from flask import Flask  # Importing Flask and Flask Alchemy into Python
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.testing.pickleable import Foo

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgressql://scott:tiger@localhost/online_retail_store' # Path to database
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False # Used for extra warnings in terminal

db = SQLAlchemy(app)


# Tables for Flask where we can run commands in the interface to preform certain actions
class Products_Info(db.Model):
    __tablename__ = 'Products_Info'
    Product_Name = db.column(db.String(15))
    Category = db.column(db.String(15))
    SubCategory = db.column(db.String(15))

class CustomerReviews(db.Model):
    __tablename__ = 'CustomerReviews'
    Customer_Name = db.column(db.String(15))
    Review = db.column(db.String(50))

class ShoppingCart(db.Model):
    Customer_Name = db.column(db.String(15))
    Order_ID = db.column(db.String(4))
    Address = db.column(db.String(50))
    Category_Purchased = db.column(db.String(50))
    SubCategory_Purchased = db.column(db.String(50))
    Shipping_Options = db.column(db.String(50))
    Payment_Type = db.column(db.String(4))

    class Foo(db.Model):
        def __init__(self, **kwargs):
            super(Foo, self).__init__(**kwargs)

  def __repr__(self):  # Searches for products based on product name, categories, and/or sub-categories
        return '<ProductInfo %r>' % self.Product_Name
        return '<ProductInfo %r>' % self.Category
        return '<ProductInfo %r>' % self.SubCategory

def __repr__(self):   # Reads customer reviews for the products
        return '<CustomerReviews %r>' % self.Customer_Name
        return '<CustomerReviews %r>' % self.Review

def __repr__(self): # Add and remove products from a shopping cart. Also purchase products from their shopping cart
        return '<ShoppingCart %r>' % self.Customer_Name
        return '<ShoppingCart %r>' % self.Order_ID
        return '<ShoppingCart %r>' % self.Address
        return '<ShoppingCart %r>' % self.Category_Purchased
        return '<ShoppingCart %r>' % self.SubCategory_Purchased
        return '<ShoppingCart %r>' % self.Shipping_Options
        return '<ShoppingCart %r>' % self.Payment_Type