describe 'IDs Dinâmicos', :dinamico do
    
    before(:each) do
        visit '/access'
    end

    it 'Cadastro IDs dinâmicos' do
        find('input[id$=UsernameInput]').set 'teste'
        find('input[id^=PasswordInput]').set 'teste'
        click_link 'Criar Conta'

        expect(find('#result')).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 1.5
    end

end