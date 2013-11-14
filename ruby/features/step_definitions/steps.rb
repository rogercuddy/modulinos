Given(/^program "([^"]*)"$/) do |program|
  @cucumber = { caller: program }
end

When(/^it runs$/) do
  @cucumber[:output] = `ruby #{@cucumber[:caller]}`
end

Then(/^the output reflects the caller$/) do
  if @cucumber[:caller] =~ /scriptedmain/i
    value = 'Main'
  else
    value = 'Test'
  end

  @cucumber[:output].should =~ /^#{value}:\s/
end
