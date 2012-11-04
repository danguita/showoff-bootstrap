namespace :server do

  require 'open-uri'

  host = 'http://localhost'
  port = 9090
  url = [host, port].join(':')
  start_command = "bundle exec showoff serve -p #{port}"

  desc "Check if showoff server is running"
  task :check do
    begin
      open url
    rescue Errno::ECONNREFUSED
      raise "### showoff server is not running. Run `rake server:start` or `#{start_command}`"
    end
  end

  desc "Compile assets and start server"
  task :start do
    Rake::Task["styles:compile"].invoke

    system start_command
  end

end
