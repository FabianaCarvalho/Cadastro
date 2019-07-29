class User < SitePrism::Page
   set_url '/index.php?controller=authentication&back=my-account'
  #page.execute_script("window.scrollBy(0,400)")

#mapeando os elementos

def preencher_campos
  @name = Faker::Name.name
  @password = Faker::Base.numerify('Capybara####').to_s
  fill_in 'email_create', with: Faker::Internet.email('fabiruby')
  find('#SubmitCreate').click
  find('#uniform-id_gender1').click
  fill_in 'customer_firstname', with: @name
  fill_in 'customer_lastname', with: @name
  fill_in 'passwd', with: @password
  find('#days > option:nth-child(12)').click
  find('#months > option:nth-child(12)').click
  find('#years > option:nth-child(36)').click
  find('#uniform-newsletter').click
  fill_in 'company', with:'Startup'
  fill_in 'address1', with: '5th Avenue'
  fill_in 'city', with: 'Nova York'
  find('#id_state > option:nth-child(12)').click
  fill_in 'postcode', with: '10118'
  fill_in 'other', with: 'Disciplina é liberdade!'
  fill_in 'phone_mobile', with: '5511970477758' 
  fill_in 'alias', with: 'Fabiana' 
  find('#submitAccount').click

    end
end