server:
	env $$(cat env.sh) bundle exec shotgun

migrate:
	env $$(cat env.sh) $(MAKE) run-migrations
	env $$(cat env.sh) $(MAKE) update-schema

run-migrations:
	bundle exec sequel -m db/migrations $(DATABASE_URL)

update-schema:
	bundle exec sequel -D $(DATABASE_URL) > db/schema.rb
