# https://github.com/guard/guard#readme

guard :rspec, cmd:'rspec spec' do
  # App
  watch(%r{^lib/models/(.+)\.rb$})     { |m| "spec/models/#{m[1]}_spec.rb" }

  # Specs
  watch(%r{^spec/.+_spec\.rb$})
  watch('spec/spec_helper.rb')  { "spec" }
end
