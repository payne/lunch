

People are in groups.   All the people in a group are assigned to groups
of five for lunch.   A lunch records who was assigned, who attended, who enjoyed.

1. rails g scaffold person name:string email:string num_lunches:integer
1. rails g scaffold group name:string attendance_rate:float
1. rails g scaffold lunch_event when:date
1. rails g scaffold location name:string address:string zip:string

## Woot!  A small step

~~~~~~~~~~~~~~~
mpayne-mn2:lunch mpayne$ bin/rake db:setup
Running via Spring preloader in process 46964
db/development.sqlite3 already exists
-- create_table("groups", {:force=>:cascade})
   -> 0.0111s
-- create_table("locations", {:force=>:cascade})
   -> 0.0040s
-- create_table("lunch_assignments", {:force=>:cascade})
   -> 0.0043s
-- add_index("lunch_assignments", ["lunch_event_id"], {:name=>"index_lunch_assignments_on_lunch_event_id"})
   -> 0.0223s
-- add_index("lunch_assignments", ["person_id"], {:name=>"index_lunch_assignments_on_person_id"})
   -> 0.0029s
-- create_table("lunch_events", {:force=>:cascade})
   -> 0.0033s
-- create_table("people", {:force=>:cascade})
   -> 0.0065s
-- initialize_schema_migrations_table()
   -> 0.0090s
mpayne-mn2:lunch mpayne$ rails c
Running via Spring preloader in process 46966
Loading development environment (Rails 4.2.5.1)
2.3.0 :001 > l1=LunchEvent.create(when: Date.today)
   (0.1ms)  begin transaction
  SQL (0.6ms)  INSERT INTO "lunch_events" ("when", "created_at", "updated_at") VALUES (?, ?, ?)  [["when", "2016-01-27"], ["created_at", "2016-01-28 02:01:20.242495"], ["updated_at", "2016-01-28 02:01:20.242495"]]
   (1.7ms)  commit transaction
 => #<LunchEvent id: 1, when: "2016-01-27", created_at: "2016-01-28 02:01:20", updated_at: "2016-01-28 02:01:20">
2.3.0 :002 > matt=Person.create(name: "Matt")
   (0.1ms)  begin transaction
  SQL (0.4ms)  INSERT INTO "people" ("name", "created_at", "updated_at") VALUES (?, ?, ?)  [["name", "Matt"], ["created_at", "2016-01-28 02:01:31.129935"], ["updated_at", "2016-01-28 02:01:31.129935"]]
   (1.5ms)  commit transaction
 => #<Person id: 1, name: "Matt", email: nil, num_lunches: nil, created_at: "2016-01-28 02:01:31", updated_at: "2016-01-28 02:01:31">
2.3.0 :003 > matt.lunch_event << l1
   (0.1ms)  begin transaction
  SQL (0.3ms)  INSERT INTO "lunch_assignments" ("person_id", "lunch_event_id") VALUES (?, ?)  [["person_id", 1], ["lunch_event_id", 1]]
   (1.3ms)  commit transaction
  LunchEvent Load (0.2ms)  SELECT "lunch_events".* FROM "lunch_events" INNER JOIN "lunch_assignments" ON "lunch_events"."id" = "lunch_assignments"."lunch_event_id" WHERE "lunch_assignments"."person_id" = ?  [["person_id", 1]]
 => #<ActiveRecord::Associations::CollectionProxy [#<LunchEvent id: 1, when: "2016-01-27", created_at: "2016-01-28 02:01:20", updated_at: "2016-01-28 02:01:20">]>
2.3.0 :004 >
~~~~~~~~~~~~~~~
