describe 'Automatização funções Gmail', :Gmail do

    email = 'automacaoteste18@gmail.com'
    senha = 'benner123'

    before(:each) do
        visit 'https://mail.google.com/mail/u/0/?tab=wm&ogbl&zx=vlndz4h7blg3#inbox'
        
        fill_in 'identifier', with: email

        ElementoLogin= find("#identifierNext")
        ElementoLogin.click

        fill_in 'password', with: senha
        
        ElementoSenha = find("#passwordNext") 
        ElementoSenha.click

    end
    
    it 'Validar se está logado', :vlogado do
        
        Capybara.ignore_hidden_elements = false
        find('span[class="gb_Ia gbii"]').hover
        expect(find('.gb_Pe').text).to include email

    end

    it 'Excluir Emails' do
        atualizacao = find('.aRz .aJi-aLe')
        atualizacao.click 
        
        first('span[dir=ltr]').set(true)
        find('div[data-tooltip="Excluir"]').click
        #expect(page).to eql 'conversas movidas para a lixeira.'
        
    
        sleep 5

    end
end

