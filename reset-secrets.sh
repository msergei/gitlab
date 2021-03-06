#!/bin/bash

# If you restore projects from other gitlab instance, you would have some problems with update/delete projects.

# You need to connect production DB and execute query for update ALL projects, or you can specify "WHERE id=5", for example.
# UPDATE projects SET runners_token = null, runners_token_encrypted = null WHERE id=5;

docker-compose exec srv gitlab-psql -d gitlabhq_production -c "UPDATE projects SET runners_token = null, runners_token_encrypted = null;"
