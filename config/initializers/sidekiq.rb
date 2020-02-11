# Using a separate shared redis database here than the cache
# store uses for a small bit of isolation.  This won't have any
# performance benefits but it may be a little bit easier to
# copy one of those to a separate redis instance if it's necessary
# in the future.
require 'sidekiq'
require 'sidekiq/api'

SCHEDULED_SET = Sidekiq::ScheduledSet.new

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://127.0.0.1:6379/0' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://127.0.0.1:6379/0' }
end