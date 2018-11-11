Given(/^program "([^"]*)"$/) do |program|
    @cucumber = { caller: program }
end

When(/^it runs$/) do
    @cucumber[:output] = `ruby #{@cucumber[:caller]}`
end

Then(/^the output reflects the caller$/) do
    if @cucumber[:caller] =~ /modulino/i
        value = 'Main'
    else
        value = 'Test'
    end

    expect(@cucumber[:output]).to match(/^#{value}:\s/)
end
