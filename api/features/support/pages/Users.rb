class Users
    include RSpec::Matchers
    
    def all_listing
        response = HTTParty.get(Base['url']['users']) 
        name = []
        last_name = [] 
        if response.code == 200
            (1..response['total_pages']).each do |i|
            res = HTTParty.get(Base['url']['users'], query: {page: i})
            if res.code == 200
                res['data'].each do |res|
                    name << res['first_name'] 
                    last_name << res['last_name'] 
                end   
            end  
            end
        end
        return name, last_name
    end

    def listing_users(users)
        (0...users[0].count).each do |i|
            puts "Nome: #{users[0][i]} - Sobrenome: #{users[1][i]}".blue
        end  
    end

    def creat_user
        response = HTTParty.post(Base['url']['create_user'], body: {name: "Gabriel Roland" , job: "QA"}) 
        return response['id']
    end

    def listing_new_user(id)
        puts "O id do usuario cadastrado é: #{id}".blue
    end   

end