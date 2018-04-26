Given(/^I am on the initial page$/) do
  visit "localhost:8080/CollageProject/InitialPage.jsp"
end

When(/^I start typing a topic into the input box$/) do
  fill_in('topic', :with => 'Cat')
end

Then(/^the prompt text should dissapear$/) do
  expect(find('input.inputTextForm').value).to eq 'Cat'
end

When(/^I hit enter$/) do
  find('input.inputTextForm').native.send_keys(:return)
end

# Then(/^I should see the value of the button is "Build Collage"$/) do
#  expect(find('input.buildCollageButton').value).to eq 'Build Collage'
# end

# Export Collage button
# 		i. Clicking button allows the user to download a PNG image of the collage
# 		ii. Size of image should match the displayed collage’s size
# 		iii. Button color is dark gray
# 		iv. Text color is white
# 		v. Label text is “Export Collage”

#Then(/^I should see the collage is downloaded as a PNG image when I click the export button$/) do filename|
      # page.response_headers['Content-Disposition'].should include("filename=\"#{filename}\"")

#end
Then /^I should get a download with the filename "([^\"]*)"$/ do |filename|
       page.response_headers['Content-Disposition'].should include("filename=\"#{filename}\"")
    end

Then(/^I should see the CSS of the export button is dark gray$/) do
	#
	backgroundColor = find('input.Export').native.css_value('background-color')
	expect(backgroundColor).to eq('rgba(105, 105, 105, 1)')
end

Then(/^I should see the the CSS of the export button is white for the text$/) do
	#
	color = find('input.Export').native.css_value('color')
	expect(color).to eq('rgba(255, 255, 255, 1)')
end

Then(/^I should see the text for the label is Export Collage$/) do
	#
	expect(find('input.Export').value).to eq 'Export Collage'
end



