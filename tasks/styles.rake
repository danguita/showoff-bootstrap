namespace :styles do

  desc "Convert Sass stylesheets into compressed CSS"
  task :compile do
    puts "--- Update stylesheets: stylesheets/sass/*.scss -> *.css"
    system "sass --style compressed --update stylesheets/sass:."
  end

end
