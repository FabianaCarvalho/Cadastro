Dado("que eu acesso o website") do
  user.load
  user.preencher_campos
   
end
  
Quando("preencho todos os campos e confirmo") do
  
end
  
Entao("verifico a mensagem de sucesso") do
  expect(page).to have_content 'Welcome to your account. Here you can manage all of your personal information and orders.'

end










