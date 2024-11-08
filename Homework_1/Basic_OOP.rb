class Dessert
    attr_accessor :name, :calories
    def initialize(name, calories)
        @name = name
        @calories = calories
    end
    def healthy?
        if calories < 200
            return true
        end
        return false
    end
    def delicious?
        return true
    end
end

sobremesa1 = Dessert.new("Donut", 1000)
puts sobremesa1.name
puts sobremesa1.calories
puts sobremesa1.healthy?
puts sobremesa1.delicious?

sobremesa2 = Dessert.new("Uva", 50)
puts sobremesa2.name
puts sobremesa2.calories
puts sobremesa2.healthy?
puts sobremesa2.delicious?
