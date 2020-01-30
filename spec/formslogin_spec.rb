describe 'Forms', :loginRandom do
   
    Dia = '29'
    Mes = '05'
    Ano = '1970'


    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/login2'
    end

    it 'Login no Site' do
        find('#userId').set 'stark'
        find('#passId').set 'jarvis!'

        campologin = find('#login')

        case campologin.text
        when /Dia/
            find('#day').set Dia
        when /Mês/
            find('#month').set Mes
        when /Ano/
            find('#year').set Ano
        end

        find('.btn-login').click 
        
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        sleep 3

    end
end




