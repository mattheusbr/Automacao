describe 'Preenchendo teclas', :key do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
    end

    it 'Testando teclas' do

        teclas = %i[tab space enter alt]
        simbolos = %w[m a t h e u s b r u n o]

        teclas.each do |m|
            find('#campo-id').send_keys m
            expect(page).to have_content 'You entered: ' +m.to_s.upcase 
            sleep 0.5
        end

        simbolos.each do |b|
            find('#campo-id').send_keys b
            expect(page).to have_content 'You entered: ' +b.upcase 
            sleep 0.5
        end

    end
end 

# to_s => transformar as teclas em string 
# upcase => Manuscrito 
# %i => Array de simbolos
# %w => Array de letras 