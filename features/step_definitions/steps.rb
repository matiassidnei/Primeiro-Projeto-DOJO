Dado(/^que eu esteja na home do Site$/) do
  visit 'https://enterprise-demo.orangehrmlive.com/'
end

Quando(/^preencher os campos de usuario e senha$/) do
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  find(:id, 'btnLogin').click
end

Então(/^o sistema apresenta a home para cadastro$/) do
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_addEmployee').click
  fill_in("firstName", :with => 'Nilson')
  fill_in("middleName", :with => 'Jose')
  fill_in("lastName", :with => 'Pereira')
  fill_in("employeeId", :with => 'Nilsao')
  select('Texas R&D', :from => 'location')
   find(:id, 'btnSave').click
end


Então(/^o sistema apresenta a tela para alterar cadastro$/) do
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_viewEmployeeList').click
  find(:id, 'searchBtn').click  
  
end

Então(/^eu acessar um usuário$/) do
  click_link('0044')
end

Então(/^eu editar o usuário$/) do
	find(:id, 'btnSave').click
	fill_in("personal_txtEmpLastName", :with => 'Nilson')
	

end

Então(/^o sistema salva a alteracao com sucesso$/) do
  find(:id, 'btnSave').click
end
