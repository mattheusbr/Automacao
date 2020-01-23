describe 'Automatização funções Gmail', :Gmail do

    before(:each) do
        visit 'https://mail.google.com/mail/u/0/?tab=wm&ogbl&zx=vlndz4h7blg3#inbox'
        
        email = 'automacaoteste18@gmail.com'
        fill_in 'identifier', with: email

        ElementoLogin= find("#identifierNext")
        ElementoLogin.click

        fill_in 'password', with: 'benner123'
        
        ElementoSenha = find("#passwordNext") 
        ElementoSenha.click


    end
    
    it 'Validar se está logado', :vlogado do
        
        Capybara.ignore_hidden_elements = false
        find('span[class="gb_Ia gbii"]').hover
        exepct(find('.gb_ee').textContent).to include email


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

