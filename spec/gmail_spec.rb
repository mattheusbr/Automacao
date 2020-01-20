describe 'Automatização funções Gmail', :Gmail do
    
    before(:each) do
        visit 'https://mail.google.com/mail/u/0/?tab=wm&ogbl&zx=vlndz4h7blg3#inbox'
        
        fill_in 'identifier', with: 'automacaoteste18@gmail.com'

        Elemento= find("#identifierNext")
        Elemento.click

        fill_in 'password', with: 'benner123'
        
        Elemento = find("#passwordNext") 
        Elemento.click
    end
    
    it 'Excluir Emails' do
        modulo = find('.aKz')
        modulo.find(text: 'Atualizações').click



        #click_on(class: 'ZFr60d CeoRYc')
        #find_element(:xpath,'//*[@id="identifierNext"]/span').click()
        
        
        #fill_in 'password', with: '@'
        #click_button 'identifierNext'

        #Pergunta se o elemento #flash está visivel após o login
        #expect(find('#:2r').visible?).to be true
        
        #Verifica se o texto do elemento mostrado na pagina contem essa parte
        #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        #Verifica se o texto no elemento contem essa parte
        #expect(find("#flash")).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    
    
        #have_content | include (da o mesmo resultado de verificação)

    end
end


#===comentarios===#
# Get.Elementbyxpach(//*[@id="rp1_edt"]/table/tbody/tr[2]/td/form/table/tbody/tr[1]/td[2]/input). click_button\
#expect(page).to have_content 'Benner WES 2006.181.1.81teste' 