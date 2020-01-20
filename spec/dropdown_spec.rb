describe 'Caixa de opções', :dropdown do
    it 'Marcar dropdown' do
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown' )
        sleep 3 
    end

    it 'Marcar Dropdown outro metodo' do
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'

        marcar = find('.avenger-list')
        marcar.find('option', text:'Tony Stark').select_option 
        sleep 3
    end 

    it 'Random', :random do
        visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
        random = find('.avenger-list')
        random.all('option').sample.select_option
        sleep 3
    end
end
    