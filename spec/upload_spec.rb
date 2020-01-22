
describe 'Upload arquivos', :upload do
    
    before(:each) do
        @arquivo = Dir.pwd + '/spec/fixtures/tteste.txt'
        @imagem = Dir.pwd + '/spec/fixtures/teste.png'
        visit 'http://training-wheels-protocol.herokuapp.com/upload'
    end

    it 'Upload com arquivo txt/Verificar se o arquivo txt foi enviado' do
        attach_file('file-upload', @arquivo)
        click_button 'file-submit'

        #Verifica o arquivo 
        verificar = find('#uploaded-file')
        expect(verificar.text).to eql 'tteste.txt'

    end

    it 'Upload arquivo imagem/Verificar se o arquivo imagem foi enviado' do
        
        Capybara.default_max_wait_time = 5  #Tempo maximo para reconhecer um elemento na pag
        attach_file('file-upload', @imagem)
        click_button 'file-submit'
        
        #Verifica se  a imagem carregada 
        if expect(find('#loading')).to have_content 'Carregando a foto...'
            imagem = find('#new-image')
            expect(imagem[:src]).to eql 'http://training-wheels-protocol.herokuapp.com/uploads/teste.png'
        end    
    end

    after(:each) do
        sleep 3
    end


end