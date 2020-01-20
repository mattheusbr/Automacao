
describe 'Upload arquivos', :upload do
    
    before(:each) do
        @arquivo = Dir.pwd + '/spec/fixtures/tteste.txt'
        @imagem = Dir.pwd + '/spec/fixtures/teste.png'
        visit 'http://training-wheels-protocol.herokuapp.com/upload'
    end

    it 'Upload com arquivo txt/Verificar se o arquivo txt foi enviado' do
        attach_file('file-upload', @arquivo)
        click_button 'file-submit'

        verificar = find('#uploaded-file')
        expect(verificar.text). to eql 'tteste.txt'

    end

    it 'Upload arquivo imagem/Verificar se o arquivo imagem foi enviado' do
        attach_file('file-upload', @imagem)
        click_button 'file-submit'

        if expect(find('#loading')).to have_content 'Carregando a foto...'
            sleep 5
            imagem = find('#new-image')
            expect(imagem[:src]). to eql 'http://training-wheels-protocol.herokuapp.com/uploads/teste.png'
        end 
        puts 'teste'
        
    end


    after(:each) do
        sleep 3
    end


end