# products-api

Products API/Blanja backend is RESTful API which used for Blanja web and Blanja mobile needs, The backend use MySQL as database along with NodeJS, ExpressJS use JWTtoken for security, such as authentication and authorization.

## Installation

Use the package manager [npm](https://www.npmjs.com/get-npm) to install all required dependecies.
```bash
npm install
```

## Requirements for Development 

**Before started**, make sure you've installed XAMPP and can access [phpMyAdmin](http://localhost/phpmyadmin/), after that add new database (you can write any names for your DB) in phpMyAdmin and then import file SQL from this repo in `sql/products.sql` folder, Now your DB is ready.

**Lastly add .env** files on root project and add following variables:
```bash
HOST = "localhost"
USER = "root"
PASS = ""
USER_EMAIL = <your email address (*not string)>
PASS_EMAIL = <password email (*not string)>
DATABASE = <your Database name, (string)>
SECRET_KEY = <any string you likes>
```
examples:
```bash
HOST = "localhost"
USER = "root"
PASS = ""
USER_EMAIL = myemail@gmail.com
PASS_EMAIL = 12345678
DATABASE = "products"
SECRET_KEY = "secret"
```

## Routes
All HTTP methods are supported. Use localhost:8000 for your requests
| Methods        | Endpoints    |
| ------------- |:-------------:|
| GET      | / |
| GET     | /products      |
| GET | /products/new      |
| GET | /products/popular  |
| GET | /product/{id}  |
| GET | /search/?q={product name}  |
| GET | /search/category?c={category name}  |
| GET | /history  |
| POST | /products  |
| POST | /history  |
| PATCH | /product/{id}  |
| DELETE | /product/{id}  |

## Related Project

Blanja web (ReactJS)
- [`Blanja`](https://github.com/handa26/blanja-frontend)

Blanja mobile (ReactNative)
- [`Blanja`](https://github.com/handa26/blanja-native-app)

**Note:** see postman [guide](https://documenter.getpostman.com/view/10890246/TVewXiQA) for usage examples