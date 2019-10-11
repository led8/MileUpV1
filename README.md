# MileUpV1 Documentation

## 1. How to clone the repository

⚠️Be careful, use SSH url⚠️ To clone the project run these commands :

```console
git clone git@github.com:led8/MileUpV1.git
cd MileUpV1

bundle install
yarn install
rails db:create db:migrate
```

## 2. How to deploy on heroku

To deploy the project on heroku run the following commands :

Push your code to Heroku

```console
heroku login
# => then press enter

git push heroku master
```

Migrate the database

```console
heroku run rails db:migrate
```

## Done !

Some useful commands

```console
heroku open
# => open in your browser
```
```console
heroku logs --tail
# => show the app logs and keep listening
```
```console
heroku run rails c
# => Run the production console
```

## 3. ⚠️Production⚠️

You have to create your own account on the following services :
## Mapbox Maps
## Facebook
## Cloudinary
## UNSPLASH

## a. Mapbox Maps

When your [Mapbox Maps](https://account.mapbox.com/auth/signup/) account is created <strong>you need to set up an API key for Mapbox</strong>.
Then add this key to your <span style="color:red">.env</span>.

```ruby
MAPBOX_API_KEY=pk.eyJ1Ijoib*******************yZEaZzNaJGKAmo7YmIc73A
```

Make sure to push your <span style="color:red">MAPBOX_API_KEY</span> env variable to Heroku :

```console
heroku config:set MAPBOX_API_KEY=pk.eyJ1Ijoib....
```

Check with:

```console
heroku config
```

## b. Facebook

When your [Facebook account for developers](https://developers.facebook.com/) is created <strong>you need to set up an API key for Facebook App</strong>.
Then add this key to your <span style="color:red">.env</span>.

```ruby
FACEBOOK_APP_ID=*******************
FACEBOOK_APP_SECRET=*******************
```

Make sure to push your <span style="color:red">FACEBOOK_APP_ID</span> and <span style="color:red">FACEBOOK_APP_SECRET</span> env variables to Heroku :

```console
heroku config:set FACEBOOK_APP_ID=***....
heroku config:set FACEBOOK_APP_SECRET=***....
```

Check with:

```console
heroku config
```

## c. Cloudinary

When your [Cloudinary account](https://cloudinary.com/users/register/free) is created <strong>you need to set up an API key for Cloudinary</strong>.
Then add this key to your <span style="color:red">.env</span>.

```ruby
CLOUDINARY_URL=cloudinary://216966356367945:Ir45vlbSJ*******************
```

Make sure to push your <span style="color:red">CLOUDINARY_URL</span> env variable to Heroku :

```console
heroku config:set CLOUDINARY_URL=cloudinary://216....
```

Check with:

```console
heroku config
```

## d. Unsplash

When your [Unsplash account](https://unsplash.com/login) is created <strong>you need to set up an API key for Unsplash</strong>.
Then add this key to your <span style="color:red">.env</span>.

```ruby
UNSPLASH_ACCESS_KEY=*******************
UNSPLASH_SECRET_KEY=*******************
```

Make sure to push your <span style="color:red">UNSPLASH_ACCESS_KEY</span> and <span style="color:red">UNSPLASH_SECRET_KEY</span> env variables to Heroku :

```console
heroku config:set UNSPLASH_ACCESS_KEY=***....
heroku config:set UNSPLASH_SECRET_KEY=***....
```

Check with:

```console
heroku config
```

# Happy Deploying!







