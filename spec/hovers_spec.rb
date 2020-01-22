describe 'Mouse Hovers', :hovers do
    before(:each)do
        visit'http://training-wheels-protocol.herokuapp.com/hovers'
    end

    after(:each) do
        sleep 3 
    end

    it 'Quando passar o mouse por cima da img' do
        imagem = find('img[alt=Blade]')
        imagem.hover 

        expect(page).to have_content 'Nome: Blade'

    end

    it 'Quando passar o mouse por cima da img (name com espaço)' do
        imagem = find('img[alt="Homem Aranha"]')
        imagem.hover

        expect(page).to have_content 'Nome: Homem Aranha'

    end

end