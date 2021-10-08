Given('Access the Blog page') do
  cesar_school.action.access_blog_page
end

When('Save the information about post {int}') do |number_post|
	case number_post
	when 2
		cesar_school.action.save_title(1)
		cesar_school.action.save_date(1)
	when 3
		cesar_school.action.save_title(2)
		cesar_school.action.save_author(2)
	end
end

When('Save the address') do
	cesar_school.action.save_address
end

Then('Print the informations') do
	puts "Título do segundo post: #{$titles[0]}"
	puts "Data do segundo post: #{$dates[0]}"
	puts "Título do terceiro post: #{$titles[1]}"
	puts "Autor do terceiro post: #{$authors[0]}"
	puts "Endereço do School: #{$address}"
end