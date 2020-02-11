describe 'Verificar Resultado', :prouni do
    
    before(:each) do
        visit 'http://siteprouni.mec.gov.br/'
    end

    it 'Verifica se resultado está disponivel' do

        condicao = expect(find('#momento_1_container').text).to include 'Aguarde o resultado da'

        while condicao
            puts 'Nota não disponivel'
            sleep 30
            visit 'http://siteprouni.mec.gov.br/' 
        end
        
        puts 'Nota disponivel'
        sleep 1.5
    end

end