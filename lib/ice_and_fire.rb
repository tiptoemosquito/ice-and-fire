class IAF

    attr_accessor :name, :gender, :culture, :aliases

    @@all = []

    def initialize(name: nil, gender: nil, culture: nil, aliases: nil)
        @name = name
        @gender = gender
        @culture = culture
        @aliases = aliases 
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_iaf(name)
        self.all.select {|i| i.name == name}
    end

end