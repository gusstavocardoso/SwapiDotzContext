describe 'GET Verbs' do
    
    context 'Quando eu faço um GET no recurso films' do
        before do
            @swapi_films = Swapi.get('/films/')
        end

        it 'Então devo ver o status code 200' do
            puts @swapi_films
            puts @swapi_films.code
            expect(@swapi_films.code).to eq(200)
        end

        it 'E a lista com os filmes do Star Wars' do
            for films in 0..5 do
                puts @swapi_films['results'][films]['title'] 
            end

            expect(@swapi_films['results'][0]['title']).to eq("A New Hope")
            expect(@swapi_films['results'][1]['title']).to eq("The Empire Strikes Back")
            expect(@swapi_films['results'][2]['title']).to eq("Return of the Jedi")
            expect(@swapi_films['results'][3]['title']).to eq("The Phantom Menace")
            expect(@swapi_films['results'][4]['title']).to eq("Attack of the Clones")
            expect(@swapi_films['results'][5]['title']).to eq("Revenge of the Sith")
        end       
    end  
end

