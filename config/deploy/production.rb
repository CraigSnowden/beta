# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
role :app, %w{deploy@craigsnowden.com}
role :web, %w{deploy@craigsnowden.com}
role :db,  %w{deploy@craigsnowden.com}

set :sidekiq_processes, 3
