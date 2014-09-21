# https://github.com/guard/guard#readme

guard :rspec, cmd:'rspec spec' do
  # App
  watch(%r{^lib/models/(.+)\.rb$})              { |m| "spec/models/#{m[1]}_spec.rb" }
  watch(%r{^app/main/controllers/(.+)\.rb$})    { "spec" }
  watch(%r{^app/main/views/*/(.+)\.html$})      { "spec" }
  watch(%r{^app/main/config/routes.rb$})        { "spec" }

  # Specs
  watch(%r{^spec/.+_spec\.rb$})                 { "spec" }
  watch('spec/spec_helper.rb')                  { "spec" }
end
