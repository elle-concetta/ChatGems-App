## Chat Gems App

### Introduction
This is a full-stack simple chat web application that consists of the following:

- A React frontend, in the `client` directory.
- A Ruby backend, in the `server` directory.
- A simple `json-server` API that you can run to see the completed version of the app.

### Library and Frameworks
- JetBrains IDE: RubyMine
- Javascript (React), Ruby, CSS and HTML 
- SQLite3 Database
- Sinatra API

### Frontend of the Application
To get started, `cd` into the `client` directory. Then run:

```console
npm install
npm audit fix --force
npm run server
```

This will install the React project dependencies, and run the API server
using `json-server`. Next, run this in a new terminal:

```console
npm start
```

This will lead to [http://localhost:3000](http://localhost:3000) in the browser and interact with the application.

Turn off `json-server` with `control + c` in the terminal where `json-server`.

### Backend of the Application
In another terminal, run `cd` into the `server` directory. Then run:

Then run `bundle install` to install the dependencies.

The Ruby server directory includes a model and migrations, routes to handle requests, and CRUD actions with Active Records.

There's a Rack CORS gem (`config.ru` file) that provides some middleware so the frontend can make requests to the backend.

Run the Sinatra server with: `bundle exec rake server`.

### Message Model
The `Message` model and the migration code to create messages:
- body: string
- username: string
- created_at: timestamp
- updated_at: timestamp

Run the migrations and use the provided `seeds.rb` file to seed the database:

```console
bundle exec rake db:migrate db:seed
```

### Routes
The routes to handle the CRUD actions: `GET /messages`, `POST /messages`, `PATCH /messages/:id` and `DELETE /messages/:id`

