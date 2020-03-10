describe 'Teste Erro UberEats', :eats  do

    it 'Verificando erro' do
        visit 'https://www.ubereats.com/en-US/maringa/food-delivery/subway-tiradentes/fbCFKOTlQvSrB2RW7Z-sVA?promo=e48c816d-5cc1-4d75-b580-bb3f5427151a'
        sleep 3
        find('div[role="combobox"]').click

        find('B.M.T. - presunto, salame e pepperoni').click
        sleep 3

        
    end
    
end