describe 'Projeto automatização autorização WES OLD', :benner do
    usuario = 'programador'
    senha = 'benner'

    before(:each) do
        visit 'http://mga-apl044/QualidadeAG_HomOld'
        fill_in 'pu', with: usuario
        fill_in 'pp', with: senha 
        find('input[value=Entrar]').click 

        sleep 3
    end

    it 'teste' do
        puts 'teste'
    end

    
end