class Pokemon
    attr_accessor :name, :type, :id, :db
    

    def initialize(name:, type:, id:, db:)
        @name = name 
        @type = type
        @id = id
        @db
    end

    def self.save(name, type, db)
        db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);", name, type)
    end

    def self.find(id, db)
        #find pokemon by id
        choosen_pokemon =  db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
        #return pokemon object
        Pokemon.new(name: choosen_pokemon[1], type: choosen_pokemon[2], id: choosen_pokemon[0], db: db)
    end


 



end
