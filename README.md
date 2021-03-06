<div class="row">
  <%= @patterns.each do |r| %>
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">
          <h3 class="card-title"><%= r.pattern_name %></h3>
          <a class="card-text" href="http://www.ravelry.com/patterns/library/<%= r.web_link %>">View on Ravelry</a>
          <img src= <%= r.picture %> >
          <%# <%= button_to "Create", {action: "create" },  [:%>  
          <button class="btn btn-primary" value="1" name="ravelry[user_id]" id="ravelry_user_ids_1">Add to Pattern List</button>
        </div>
      </div>
    </div>
  <% end %>
</div>


<% form_tag search_index_path, :method => "get" do %>
  <%= label_tag(:search, "Search Pattern by Name:") %>
  <%= text_field_tag :search, params[:search] %>
  <%= submit_tag("Search", :pattern_name => nil) %>
<% end %>


## Description

This is a basic scaffolded Rails project using Docker with Ruby 2.6.5, Rails 5.2.4, and Postgres 12.1. This project can be used in lieu of installing Ruby, Rails and Postgres on your machine. When you run `docker-compose up`, Docker will create two containers on your machine: a Ruby/Rails environment running the local server and a Postgres container where your database is stored.

### Windows Users

You will need to uncomment the following line in `Dockerfile` for the `entrypoint.sh` script to run correctly:

```
RUN sed -i -e 's/\r$//' /usr/bin/entrypoint.sh
```

This line switches the line ending format so it works correctly with Windows. (Note that if the line above is uncommented, the script won't run correctly with Mac machines.)

### Running Rails and Postgres Servers

* Run `docker-compose up` to run the local server at `localhost:3000`. However, if you go to `localhost:3000`, you will see the DB is not set up yet.

### Running Shell Commands

To access a shell environment to run `rails c`, run migrations, or run other `rake` and `rails` tasks such as `rails routes`, you'll need to do the following.

Run the following command in the root directory of the project:

```
$ docker-compose run web sh
```

It's not necessary for the containers to be running (with `$ docker-compose up`).

This will open a shell where you can run any commands in the web application's environment. This includes the following commands:

* `$ bundle exec rake db:create` (and any other Rake commands)
* `$ rails routes` and `$ rails c` (as well as any other Rails commands)
* `$ bundle exec rspec` (to run tests)
* `$ irb` (if you just need a basic Ruby REPL)

### What if I want to add more gems to my project?

You'll need to complete the following steps:

* First, add the gems to the project.

* Run `docker-compose run web bundle install`. This will bundle the new gems.

* Next, run `docker-compose up --build`. This will rebuild the project.

To read Docker's documentation on running projects using Ruby and Rails, see [Quickstart: Compose and Rails](https://docs.docker.com/compose/rails/).
