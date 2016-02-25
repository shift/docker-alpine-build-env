require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format jspn --out #{ENV['CIRCLE_TEST_REPORTS']}/cucumber/tests.cucumber"
end

task :build do
  sh "docker build -t shift/alpine-build-env ."
end

task :audit do
  sh "docker run -it shift/alpine-build-env apk audit"
  sh "docker run -it shift/alpine-build-env apk stats"
end

task :default => [:build, :features, :audit]
