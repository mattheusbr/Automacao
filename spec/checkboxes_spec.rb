describe 'Caixa de seleção', :checkboxes do 
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/checkboxes'
    end
    
    it 'Marca opção' do
        check('thor')
    end

    it 'Desmarcas opção' do
        uncheck('thor')
    end
    
    it 'Marcando/Desmarcando opção file set true' do
        find('input[value=cap]').set(true)
        find('input[value=ant-man]').set(false)
    end

    after(:each) do
        sleep 3
    end
end