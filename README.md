# Solo Project Plant Life Shop Inventory App
A plant shop inventory app in Ruby using an MVC pattern. I devised user stories for the app, focusing its use for a small business owner. The user is able to view, edit, create and delete individual plants in stock using CRUD functions and RESTful routes. The app is backed by PostgreSQL database and uses HTML5 and CSS.

Project Objectives
- Object oriented programming with Ruby
- Test Driven Development
- Web Programming (REST, MVC)
- Interacting with a PostgreSQL database (CRUD)

User Case Stories:
1.  As a shop owner with a daily high turn over of plant sales 
    I want to keep track of all my stock levels in real time
    So that I can react to sales info and re order popular items quickly 

2.  As a shop owner dealing with numerous suppliers of different plant types
    I want to keep track easily of which plants are sourced from which nursery
    So that I can re-order and estimate delivery times and costs more efficiently

3.  As a shop owner employing part time staff in my absence
    I want to have a system which is easy to update and navigate for all
    So that I can offer autonomy to staff to make decisions about stock

4.  As a shop owner employing part time staff with limited product knowledge
    I want a system that can provide key talking points for staff to share with customers
    So that I can improve staff confidence, customer service and maintain consistent messages
    
5.  As a shop owner working with a large range of plants
    I want a system that filters plants into different categories such as verigated, aromatic
    So that I can easily find products in the app and help answer customer queries

To run the app:

In terminal:
1.  createdb plant_life
2.  psql -d plant_life -f db/plant_life.sql (in master file)
3.  ruby db/seeds.rb
4.  ruby controller.rb
5.  in browser: http://localhost:4567


