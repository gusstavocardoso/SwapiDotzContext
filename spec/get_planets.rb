describe 'GET Verbs' do

    context 'Quando eu faço um GET recurso planets' do
        before do
            @swapi_planets = Swapi.get('/planets/')
        end  

        it 'Então devo ver o status code 200' do
            expect(@swapi_planets.code).to eq(200)
        end      
    end   

    context 'Quando eu faço um GET no recurso planets e passo um count inexistente' do
        before do
            @swapi_planets = Swapi.get('/planets/')
            @count_films = @swapi_planets['count']
            @to_add = @count_films+1
            @swapi_planets = Swapi.get("/planets/#{@to_add}")
        end 

        it 'Então devo ver o status code 404' do
            expect(@swapi_planets.code).to eq(404)
            expect(@swapi_planets['detail']).to eq("Not found")
        end
    end   
end