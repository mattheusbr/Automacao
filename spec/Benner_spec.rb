describe 'Projeto automatização autorização WES OLD SP/SADT', :benner do
    usuario = 'programador'
    senha = 'benner'

    before(:each) do
        visit 'http://mga-apl044/QualidadeAG_HomOld'
        fill_in 'pu', with: usuario
        fill_in 'pp', with: senha 
        find('input[value=Entrar]').click 
    end

    it 'Criando Autorização' do
        click_link 'Atendimento'
        find('#item_A186').hover 
        expect(find('.menuitemsitemover').visible?).to be true
        find('#item_ATE0008').hover
        find('#item_ATE_0002').click_link
        sleep  2

    end

    
end