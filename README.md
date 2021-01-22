# README

App showing migration time differences between rails 6.0 and 6.1 when running db:migrate (even when
no new migrations are present)
rails 6.0 version

* Ruby version
2.7.2

* Configuration
`docker-compose build`
`docker-compose up`

* Database creation
`docker container exec -it <container> rails db:create`

* Database initialization
`docker container exec -it <container> rails db:migrate db:seed`

* Running db:migrate without new migrations:
(To reproduce: run db:migrate again)
`time docker container exec -it <container> db:migrate`

Seed data contains n(set to 4000) number of new tenants/schemas with big json inside each of tenats input tables


Stats:

```
2000 schemas
________________________________________________________
Executed in   41.01 secs   fish           external
   usr time  231.41 millis  121.00 micros  231.29 millis
   sys time  219.18 millis  781.00 micros  218.40 millis

4000 schemas
____________________________
Executed in  107.62 secs   fish           external
   usr time  375.90 millis  100.00 micros  375.80 millis
   sys time  415.81 millis  624.00 micros  415.19 millis
```
