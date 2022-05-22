# To Run Locally:
(I'm still not 100% on these steps, but off the top of my head:)

- Install Rails
  - Probably the best way to install this is with RVM
  - To install RVM, you might try some steps like [these](https://nrogap.medium.com/install-rvm-in-macos-step-by-step-d3b3c236953b), or just follow the steps on the [RVM homepage](https://rvm.io/rvm/install)
- `rvm use ruby-3.0.0`
- `npm install --global yarn`
- `yarn global add sass`
- `gem install rails --no-document`
- `gem install bundler`
- Postgres
  - install postgres [https://www.postgresql.org/download/macosx/](https://www.postgresql.org/download/macosx/)
  - once installed, run postgres
- clone this repo: `git clone https://github.com/mark-mcdermott/markmcdapp128`
- cd into repo: `cd markmcdapp128`
- install dependencies: `bundle install`
- run the app: `./bin/dev`
- go to `http://127.0.0.1:3000` in your browser
- in another tab:
  - do the migrations: `rails db:migrate`
  - seed the data: `rake seed:dev`

# To Push To Heroku
- Install the [Heroku CLI Tools](https://devcenter.heroku.com/articles/heroku-cli#install-the-heroku-cli): `brew tap heroku/brew && brew install heroku
`
- Login to Heroku with CLI Tools: `heroku login`
- Once you've committed git changes, push with: `git push heroku login`
- (so once everything is set up, the workflow is with every change commit to github and then to heroku. Heroku automatically restarts the app on every heroku push)
- go to `https://markmcdapp128.herokuapp.com` in your browser
- (note that after any db changes, you'll have to run the migrations, `heroku run rails db:migrate`. also, if you ever need to run the seeds on Heroku, use the prod seeds, `heroku run rake seed:prod`)
