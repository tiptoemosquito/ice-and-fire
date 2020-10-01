class IAF

    attr_accessor :name, :gender, :culture, :aliases, :titles

    @@all = []

    def initialize(name: nil, gender: nil, culture: nil, aliases: nil, titles: nil)
        @name = name
        @gender = gender
        @culture = culture
        @aliases = aliases
        @titles = titles
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_iaf(name)
        self.all.select do |character|
            character.name.downcase == name
        end
    end

end