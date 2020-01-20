describe 'Botões radio', :radio do
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'Marcando por Id' do
        choose('cap')
    end

    it 'Marcando por find e css selector' do
        find('input[value=thor]').click 
    end

    after(:each) do 
        sleep 3
    end
end