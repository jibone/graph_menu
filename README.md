# Graph Menu

GraphQL endpoint for menu.

## Prerequisites

Before setting up the app locally, ensure that you have the following installed:

- Ruby (version specified in .ruby-version, or install via a version manager like rbenv or rvm)
- Bundler (gem install bundler)
- Docker and Docker Compose
- Node.js and Yarn

## Setting Up Locally

**1. Clone the repository**  
First, clone the repository to your local machine:

```
git clone https://github.com/jibone/graph_menu.git
cd graph_menu

```

**2. Set up the PostgreSQL Database using Docker**  
This application uses a PostgreSQL database that runs in a Docker container. A docker-compose.yml file should be included in the repository for easy setup.

To start the database container:

```
docker-compose up -d
```

This command will:

- Pull the necessary Docker images.
- Start the PostgreSQL container in the background.

**3. Install Dependencies**  
Run the following commands to install the required gems:

```
bundle install
```

**4. Run Database Migrations**  
After setting up the Docker container, apply the database migrations to set up the schema:

```
rails db:create
rails db:migrate
```

**6. Seed the Database**  
To seed the database with example data, use the following command:

```
rails db:seed
```

This will populate your database with some initial data for Menu, Section, Item, and related models.

## Running the Application

Start the Rails server on your local machine:

```
rails server
```

The app will be running at http://localhost:3000.

## Accessing GraphiQL

To explore the GraphQL API, navigate to the GraphiQL interface in your browser:

```
http://localhost:3000/graphiql

```

GraphiQL provides a graphical interface for testing queries and mutations.

### Example Queries

**1. Query All Menus with Sections**

```
{
  menus {
    id
    label
    sections {
      id
      label
    }
  }
}
```

**2. Query All Items in a Section**

```
{
  sections {
    id
    label
    items {
      id
      label
      description
      price
    }
  }
}
```

## App Structure

The Rails app follows a standard MVC (Model-View-Controller) pattern with the following structure:

- **Models:** Defined under `app/models/` to represent the different entities (`Menu`, `Section`, `Item`, etc.).

- **GraphQL:**

  - The GraphQL schema is defined under `app/graphql/`.
  - The types for each model are stored in `app/graphql/types/`.
  - Queries are defined in `app/graphql/types/query_type.rb`.

- **Database:**

  - PostgreSQL is used as the database.
  - Migrations are stored in `db/migrate/` and can be run via rails `db:migrate`.
  - Seeds are defined in `db/seeds.rb` and can be run via rails `db:seed`.

- **Docker:**

  - The PostgreSQL database runs in a Docker container, with the configuration provided in `docker-compose.yml`.

- **Testing:**

  - RSpec is used for testing. To run the test use `bundle exec rspec`.
