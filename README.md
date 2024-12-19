<h1 align="center">
  <a href="https://yarilabs.com"><img src="app/assets/images/logo.png" alt="logo" width="250"></a>
</h1>
<h3 align="center">
    <a href="https://kaizen.yarilabs.com">Kaizen</a>
</h3>
<hr>

Source code repository for the application Kaizen.

#### Prerequisites :1st_place_medal:
```Ruby
Ruby  3.3.6
Rails 8.0.1
```
#### System dependencies :office:
```Ruby
Postgres
Redis
```
#### Configuration :writing_hand:
Ensure the environment variables present on the file `.envrc.sample` are available before booting the app.
AWS credentials are optional except `AWS_REGION`.

#### Installation :construction:
```
1. clone repo:
git clone git@github.com:realyarilabs/kaizen.git && cd kaizen

2. install dependencies:
bundle install

3. create and prepare database:
bundle exec rails db:create
bundle exec rails db:schema:load

if you want to prepopulate database with mock data run:
bundle exec rails db:seed

Alternatively, you can use a single command to create, load and seed your database:
bundle exec rails db:setup
```

#### Booting :rocket:
```bash
bin/dev
```

If you have a procfile manager application in your system, like [Foreman](https://github.com/ddollar/foreman), all the above commands are present on the `Procfile.dev` file.
Using Foreman, you can have all the above processes run with
```bash
foreman start -f Procfile.dev
```

#### Test Suite :hammer_and_wrench: and code linter :robot:
```bash
  bundle exec rails test
  rubocop
```

#### Git flow :dizzy:
This repository has two main branches: **master** and **qa**.

`master`  stable version used to deploy to production environment.

`qa` unstable version used to deploy to staging environemnt before merging to master.

A new branch should be based on `qa` since this branch will always be merged into `master`.
A new pull request opened should set `qa` as the base branch.


