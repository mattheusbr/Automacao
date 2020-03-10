describe 'Automatização funções Gmail', :Gmail do

    email = 'automacaoteste18@gmail.com'
    email_certo = 'automacaoteste18@gmail.com'
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

    it 'Validar se está logado / Excluir Emails' do

        #Verificar Email logado
        Capybara.ignore_hidden_elements = false
        find('span[class="gb_Ia gbii"]').hover
        expect(find('.gb_Pe').text).to include email_certo

        #Trocar para o modulo certo
        atualizacao = find('.aRz .aJi-aLe')
        atualizacao.click 

        #Selecionar todos e Excluir
        first('span[dir=ltr]').set(true)
        find('div[data-tooltip="Excluir"]').click
        #Verificar se foi movido para lixeira
        expect(find('.bAq').text).to include 'Conversa movida para a lixeira.'

        page.save_screenshot('log')

        sleep 2

    end
end

