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
       # modulo = find(:xpath //*[@id=":2q"])
        #modulo.click
        #sleep 4
        #modulo.first(text: 'Promoções').click

    end
end

