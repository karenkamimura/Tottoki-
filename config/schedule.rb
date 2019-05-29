# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
require File.expand_path(File.dirname(__FILE__) + "/environment")
# rails.rootを使用するときに必要。wheneverはrailsを起動しなくてはならないため


rails_env = ENV['RAILS_ENV'] || :development
# cronを実行する環境変数・developmentをAWSではproductionに書き換える


set :environment, rails_env
# 環境変数セット

env :PATH, ENV['PATH']
# パス


set :output, "#{Rails.root}/log/cron.log"
# cronログの吐き出し場所


# Example:
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
# Learn more: http://github.com/javan/whenever
job_type :rake, 'cd :path && :environment_variable=:environment bundle exec rake :task :output'
every 1.minute do
  rake 'sync:blogs'
end