describe 'Login com cadastro', :loginCadastro do
    
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/access'
    end 

    
    it 'Login' do
    
        within('#login') do
            find('#usernameId').set 'stark'
            find('#passwordId').set 'jarvis!'
            click_button 'Entrar'            
        end
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        sleep 1.5
    end

    it 'Criar Conta' do
        
        within('#signup') do
            find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'teste'
            find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set 'teste'
            click_link 'Criar Conta'
            
        end
        expect(find('#result')).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 1.5
    end
end