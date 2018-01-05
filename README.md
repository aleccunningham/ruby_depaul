## App Store

The App Store is a web application from which developers can sell their software. A user can purchase their software, and a user can also become a seller. Multiple users can be the authors of any given software product.


### Functions

  - List a product
  - Add other authors to product
  - Edit attributes of product listing
  - Sign up
  - Login
  - Logout
  - Persist sessions
  - Purchase an item

### Models

##### `User`
`attr` | `type` | `null_val`
--- | --- | ---
`id` | `primary_key;not_null` | `not_null`
`first_name` | `varchar(30)` | `''`
`last_name` | `varchar(30)` | `''`
`email` | `varchar(30);not_null` | `''`
`password_hash` | `<hashed_pass>` | ?
`is_admin` | `bool` | `true`
`product` | `many2many` | ?


##### `Product`
`attr` | `type` | `null_val`
--- | --- | ---
`id` | `primary_key;not_null` | `not_null`
`application_name` | `varchar(30)` | `''`
`authors` | `varchar(256)` | `''`
`description` | `varchar(256)` | `''`
`product_image` | `DATA` | ?
`price` | `int` | `0`
`in_stock` | `bool` | `false`

### Views

- Landing page
- Learn more

### Products 

- List
- Detail
- About Us (App description)

### Users [buyers]

- Registration 
- Orders

### Users [sellers]

- Inhereits all [buyers] views
- CRUD Product interactions 
- Bulk manage products
