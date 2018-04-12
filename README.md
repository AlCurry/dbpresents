# Database research - stats & tech demo 

## GWU Fullstack Program  April 12, 2018

   Assignment - 10 to 20 minute presentation, including some coding, about a specific topic.

### The goal of my presentation is to present some new information about databases, and to learn to work with at least one new NoSQL database.   In class we've covered the basics of mySQL and mongoDB.  

### The presentation includes:
  * demo simple mySQL Stored Procedures
  * some stats about SQL and noSQL databases
  * a simple Redis noSQL DB app using Node will be presented
  * installation instructions for Redis DB, client & server, and the app

  Order determined by what I suspect is least interesting first, but with installation of Redis last since instructions for that are included below.

  This repo includes a pdf of the presentation slides. 
   
  They are also in this google doc: https://docs.google.com/presentation/d/1g8AIQnPnD1A-NZBxd6O5tWR2xdi2_FGWtfpwLfp_--s/edit#slide=id.gcb9a0b074_1_0

  The repo includes the demo'd stored procedures, the Redis App,
  and several screen shots illustrating its use.



## Installing Redis db on MAC OS - server & client
```
mkdir redis
cd redis
curl -O http://download.redis.io/releases/redis-4.0.9.tar.gz
tar xzf redis-4.0.9.tar.gz
cd redis-4.0.9
make
make test
sudo make install
[leave this terminal, with redis-server running, output similar to below]
Als-MacBook-Pro:redis-4.0.9 alcurry$ redis-server
93900:C 11 Apr 00:06:40.451 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
93900:C 11 Apr 00:06:40.452 # Redis version=4.0.9, bits=64, commit=00000000, modified=0, pid=93900, just started
93900:C 11 Apr 00:06:40.452 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
93900:M 11 Apr 00:06:40.454 * Increased maximum number of open files to 10032 (it was originally set to 256).
                _._                                                  
           _.-``__ ''-._                                             
      _.-``    `.  `_.  ''-._           Redis 4.0.9 (00000000/0) 64 bit
  .-`` .-```.  ```\/    _.,_ ''-._                                   
 (    '      ,       .-`  | `,    )     Running in standalone mode
 |`-._`-...-` __...-.``-._|'` _.-'|     Port: 6379
 |    `-._   `._    /     _.-'    |     PID: 93900
  `-._    `-._  `-./  _.-'    _.-'                                   
 |`-._`-._    `-.__.-'    _.-'_.-'|                                  
 |    `-._`-._        _.-'_.-'    |           http://redis.io        
  `-._    `-._`-.__.-'_.-'    _.-'                                   
 |`-._`-._    `-.__.-'    _.-'_.-'|                                  
 |    `-._`-._        _.-'_.-'    |                                  
  `-._    `-._`-.__.-'_.-'    _.-'                                   
      `-._    `-.__.-'    _.-'                                       
          `-._        _.-'                                           
              `-.__.-'                                               

93900:M 11 Apr 00:06:40.460 # Server initialized
93900:M 11 Apr 00:06:40.460 * DB loaded from disk: 0.000 seconds
93900:M 11 Apr 00:06:40.460 * Ready to accept connections
93900:M 11 Apr 12:54:39.690 * 1 changes in 3600 seconds. Saving...
93900:M 11 Apr 12:54:39.695 * Background saving started by pid 99492
99492:C 11 Apr 12:54:39.705 * DB saved on disk
93900:M 11 Apr 12:54:39.795 * Background saving terminated with success
93900:M 11 Apr 13:54:40.016 * 1 changes in 3600 seconds. Saving...
93900:M 11 Apr 13:54:40.017 * Background saving started by pid 150
150:C 11 Apr 13:54:40.022 * DB saved on disk
93900:M 11 Apr 13:54:40.117 * Background saving terminated with success
```
During the init process you will be prompted to add a GitHub repository. Now would be a good time to make a new project on GitHub. Add the repo link to your package.json when prompted.

## to use Redis client, for entering commands, such as HMSET, HGETALL, or DEL
```
redis-cli
[this prompt should appear, allowing input: 127.0.0.1:6379>]
```
## Redis Desktop Manager - GUI interface to the database
```
https://redisdesktop.com  and download
```
To run the "User Management with Redis" app
```
git clone git@github.com:AlCurry/dbpresents.git
cd dbpresents
cd redusers
npm install
npm start
localhost:3000

```

App is an updated version https://github.com/bradtraversy/redusers.