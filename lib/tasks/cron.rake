task :cron => :environment do

    puts "Pulling new tweets..."
    Tweet.fetchRemoteList
    puts " "

    puts "Checking for stream status..."
    TwitchStream.fetchRemoteList
    puts " "

    puts "Checking for new youtube videos..."
    Youtube.fetchRemoteList
    puts " "

    puts "Done."

end
