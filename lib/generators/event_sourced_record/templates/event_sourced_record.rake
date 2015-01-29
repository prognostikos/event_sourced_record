namespace :<%= file_name %> do
  task :recalculate => :environment do
    <%= projection_class_name %>.find_each do |<%= file_name %>|
      <%= calculator_class_name%>.new(<%= file_name %>).run.save!
    end
  end
end

