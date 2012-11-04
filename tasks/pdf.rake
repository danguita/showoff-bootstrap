namespace :pdf do

  desc "Save a PDF version of the presentation"
  task :save do
    Rake::Task["server:check"].invoke
    Rake::Task["styles:compile"].invoke

    resource_url = 'http://localhost:9090/pdf'
    timestamp = Time.now.strftime('%Y_%m_%d_%H%M%S')
    output_file = 'pdf/showoff_%s.pdf' % timestamp

    puts "--- Get PDF: #{resource_url} -> #{output_file}"
    system "curl #{resource_url} -o #{output_file}"
  end

end
