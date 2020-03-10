describe 'Caixa de opções', :dropdown do
    it 'Marcar dropdown' do
        visit '/dropdown'
        select('Loki', from: 'dropdown' )
        sleep 3 
    end

    it 'Marcar Dropdown outro metodo' do
        visit '/dropdown'

        marcar = find('.avenger-list')
        marcar.find('option', text:'Tony Stark').select_option 
        sleep 3
    end 

    it 'Random', :random do
        visit '/dropdown'
        random = find('.avenger-list')
        random.all('option').sample.select_option
        sleep 3
    end
end
    