describe 'Drag and Drop', :drag do
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end

    after(:each) do
        sleep 3
    end

    it 'Movendo Imagem' do
        
        esquerda = find('.team-stark .column')
        direita = find('.team-cap .column')
        imagem = find('img[alt$=Aranha]')
        
        imagem.drag_to esquerda
        
        #puts 'Verificando se a imagem foi movida'
        expect(esquerda).to have_css 'img[alt$=Aranha]'

        imagem.drag_to direita
        expect(direita).to have_css 'img[alt$=Aranha]'

    end
end