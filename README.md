# MileUpV1 Documentation

## 1. How to clone the repository

⚠️Be careful, use SSH url⚠️ To clone the project run these commands :

```
git clone git@github.com:led8/MileUpV1.git
cd MileUpV1

bundle install
yarn install
rails db:create db:migrate
touch .env
echo '.env*' >> .gitignore # if not already in .gitignore
```

## 2. How to deploy on heroku

To deploy the project on heroku run the following commands :

Push your code to Heroku

```
heroku login
# then press enter

git push heroku master
```

Migrate the database

```
heroku run rails db:migrate
```

## Done !

Some useful commands

```
heroku open
# open in your browser
```
```
heroku logs --tail
# show the app logs and keep listening
```
```
heroku run rails c
# Run the production console
```

## 3. ⚠️Production⚠️

You have to create your own account on the following services :
## Mapbox Maps
## Facebook
## Cloudinary
## UNSPLASH

## a. Mapbox Maps

When your [Mapbox Maps](https://account.mapbox.com/auth/signup/) account is created <strong>you need to set up an API key for Mapbox</strong>.<br>
Then add this key to your `.env`.

```ruby
MAPBOX_API_KEY=pk.eyJ1Ijoib*******************yZEaZzNaJGKAmo7YmIc73A
```

Make sure to push your MAPBOX_API_KEY env variable to Heroku :

```
heroku config:set MAPBOX_API_KEY=pk.eyJ1Ijoib....
```

Check with:

```
heroku config
```

## b. Facebook

When your [Facebook account for developers](https://developers.facebook.com/) is created <strong>you need to set up an API key for Facebook App</strong>.<br>
Then add this key to your `.env`.

```ruby
FACEBOOK_APP_ID=*******************
FACEBOOK_APP_SECRET=*******************
```

Make sure to push your FACEBOOK_APP_ID and FACEBOOK_APP_SECRET env variables to Heroku :

```
heroku config:set FACEBOOK_APP_ID=***....
heroku config:set FACEBOOK_APP_SECRET=***....
```

Check with:

```
heroku config
```

## c. Cloudinary

When your [Cloudinary account](https://cloudinary.com/users/register/free) is created <strong>you need to set up an API key for Cloudinary</strong>.<br>
Then add this key to your `.env`.

```ruby
CLOUDINARY_URL=cloudinary://216966356367945:Ir45vlbSJ*******************
```

Make sure to push your CLOUDINARY_URL env variable to Heroku :

```
heroku config:set CLOUDINARY_URL=cloudinary://216....
```

Check with:

```
heroku config
```

## d. Unsplash

When your [Unsplash account](https://unsplash.com/login) is created <strong>you need to set up an API key for Unsplash</strong>.<br>
Then add this key to your `.env`.

```ruby
UNSPLASH_ACCESS_KEY=*******************
UNSPLASH_SECRET_KEY=*******************
```

Make sure to push your UNSPLASH_ACCESS_KEY and UNSPLASH_SECRET_KEY env variables to Heroku :

```
heroku config:set UNSPLASH_ACCESS_KEY=***....
heroku config:set UNSPLASH_SECRET_KEY=***....
```

Check with:

```
heroku config
```

# Happy Deploying!







