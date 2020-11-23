# products-api
> A RESTFful API for use in Blanja website, visit the front-end of the website [Blanja](https://arka-blanja.netlify.app/login.html). This app uses Node.js, ExpressJS and MySQL as database

## Usage
1. **Install all dependencies**
`npm install`
2. **Run in development**
`npm run server`
3. **Run in production**
`npm run start`

And head to PORT 3000

## Routes
All HTTP methods are supported. Use localhost:3000 for your requests
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

**Note:** see postman [guide](https://documenter.getpostman.com/view/10890246/TVewXiQA) for usage examples