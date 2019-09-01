test:
	bin/rails test

setup: clean
	bin/setup
	bin/rails db:fixtures:load

clean:
	bin/rails db:drop

db-reset:
	bin/rails db:drop
	bin/rails db:create
	bin/rails db:migrate
	bin/rails db:fixtures:load

start:
	bundle exec heroku local

lint:
	bundle exec rubocop

fix:
	bundle exec rubocop --auto-correct

deploy:
	git push heroku master

lsp-configure:
	bundle exec yard gems
	bundle exec solargraph bundle

.PHONY: test
