# Restaurant Based Api

# Features!
  - CreateClient for api
  - Oauth2 authentication
  - List of all restaurant api (sorting and searching)
  - version upgradation support

### Tech

Restaurant based api uses a number of open source projects to work properly:

* Symfony 4
* Mysql
* FosRestBundle
* Jms Seializer
* Postman


### Installation
***Please import the symfony-rest-api.json file on postman for proper api documentation

1. git clone https://devshouvick@bitbucket.org/devshouvick/symfony-rest-api.git
2. composer install
3. in .env configure DATABASE_URL = mysql://dbuser:@hostname:port/dbname
4. bin/console doctrine:database:create
5. import db from db/file.sql (if needed)
6. create api client from terminal:-
    bin/console fos:user:create
    email:
    password:
    username:

for zip project 
1. unzipped the project
2. in .env configure DATABASE_URL = mysql://dbuser:@hostname:port/dbname (if you have different credentials)
3. import db from db/file.sql


### TDD instruction
1. get all restaurant list with old version api
   ./vendor/bin/simple-phpunit --filter testAllRestauratant Tests/RestaurantListApiTest.php
2.  get all restaurant list with new version api
    ./vendor/bin/simple-phpunit --filter testAllRestauratantNewVersion Tests/RestaurantListApiTest.php
3. Open State = 1 (middle) and option best match and sort asc
    ./vendor/bin/simple-phpunit --filter testOpenStatWithOptionBestMatch Tests/RestaurantListApiTest.php
4. Open State = 2 (bottom) and option newest and sort desc
    ./vendor/bin/simple-phpunit --filter testOpenStatWithOptionNewest Tests/RestaurantListApiTest.php
5. Open State = 0 (top) and option popularity and sort asc
    ./vendor/bin/simple-phpunit --filter testOpenStatWithOptionPopularity Tests/RestaurantListApiTest.php
6. get restaurant by search name 
    ./vendor/bin/simple-phpunit --filter testRestaurantByName Tests/RestaurantListApiTest.php
7. get restaurant by search name new version 
    ./vendor/bin/simple-phpunit --filter testRestaurantByNameNewVersion Tests/RestaurantListApiTest.php

### Developer Info
MD.Shohag Monzur Shouvick
Version : 1.1.0
Created At : 25.12.2019



