describe 'Hello World - 1º estudo automação' do

    it 'Visitar a página' do
        visit 'http://mga-apl044/QualidadeAG_CorrenteOld'
        expect(page.title).to eql 'Login' 
    end
end