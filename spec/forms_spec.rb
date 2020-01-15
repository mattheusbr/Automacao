describe 'Forms' do
    it 'Logado' do
       visit 'http://mga-apl044/QualidadeAG_CorrenteOld'
       fill_in 'pu', with: 'programador'
       fill_in 'pp', with: 'benner'

       click_button 'Entrar'
       expect(page).to have_content 'Benner WES 2006.181.1.81teste' 

    end
end

# Get.Elementbyxpach(//*[@id="rp1_edt"]/table/tbody/tr[2]/td/form/table/tbody/tr[1]/td[2]/input). click_button\