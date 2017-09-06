task :flog => [] do
  sh 'bundle exec flog .'
end

task :churn => [] do
  sh 'bundle exec churn'
end

task :lili => [] do
  sh 'bundle exec lili .'
end

task :editorconfig=> [] do
  sh 'flcl . | xargs -n 100 editorconfig-cli check'
end

task :astyle_apply => [] do
  begin
    sh 'find . -type d -name android -prune -o -type f -name "*.java" -o -name "*.cpp" -o -name "*.[ch]" -exec astyle {} \\; | grep -v Unchanged'
  rescue
  end
end

task :astyle => [] do
  begin
    sh 'find . -type d -name android -prune -o -type f -name "*.java" -o -name "*.cpp" -o -name "*.[ch]" -exec astyle --dry-run {} \\; | grep -v Unchanged'
  rescue
  end
end

task :clean_astyle => [] do
  sh 'find . -type f -name "*.orig" -exec rm {} \\;'
end

task :pep8 => [] do
  sh 'find . -name node_modules -prune -o -name bower_components -prune -o -name "*.py" -exec pep8 {} \\;'
end

task :jshint => [] do
  sh 'node_modules/.bin/jshint .'
end

task :jslint => [] do
  sh 'find . -type d -name node_modules -prune -o -type d -name bower_components -prune -o -type f -name "*[-.]min.js" -prune -o -type f -name "*.bat" -prune -o -type f -name "*.js" -exec node_modules/.bin/jslint {} \\;'
end

task :eslint => [] do
  sh 'node_modules/.bin/eslint .'
end

task :gofmt => [] do
  sh 'gofmt -s -w .'
end

task :bashate => [] do
  sh 'stank . | xargs bashate'
end

task :shlint => [] do
  sh 'stank . | xargs shlint'
end

task :checkbashisms => [] do
  sh 'stank . | xargs checkbashisms -n -p'
end

task :shellcheck => [] do
  sh 'stank . | xargs shellcheck'
end

task :funk => [] do
  sh 'funk .'
end

task :lint => [
  :flog,
  :churn,
  :lili,
  :editorconfig,
  :astyle,
  :pep8,
  :jshint,
  :jslint,
  :eslint,
  :gofmt,
  :bashate,
  :shlint,
  :checkbashisms,
  :shellcheck,
  :funk
] do
end

task :clean => [
  :clean_astyle
] do
end
