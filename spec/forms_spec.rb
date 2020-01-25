describe 'Forms', :login do
    it 'Login no Site' do
        visit 'http://training-wheels-protocol.herokuapp.com/login'
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        #Pergunta se o elemento #flash está visivel após o login
        expect(find('#flash').visible?).to be true
        
        #Verifica se o texto do elemento mostrado na pagina contem essa parte
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        #Verifica se o texto no elemento contem essa parte
        expect(find("#flash")).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        
    
        #have_content | include (da o mesmo resultado de verificação)

    end
end


#===comentarios===#
# Get.Elementbyxpach(//*[@id="rp1_edt"]/table/tbody/tr[2]/td/form/table/tbody/tr[1]/td[2]/input). click_button\
#expect(page).to have_content 'Benner WES 2006.181.1.81teste' 