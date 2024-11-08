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

class JellyBean < Dessert
    attr_accessor :flavor
    def initialize(name, calories, flavor)
        super(name, calories)  # Chama o método `initialize` da classe `Dessert`
        @flavor = flavor
    end
    def delicious?
        if flavor == "black licorice"
            return false
        end
        return true
    end
end

sobremesa1 = Dessert.new("Mamão", 150)
puts (sobremesa1.name + " " + sobremesa1.calories.to_s + " " + sobremesa1.healthy?.to_s + " " + sobremesa1.delicious?.to_s)

jellyBean1 = JellyBean.new("Fini", 500, "black licorice")
jellyBean2 = JellyBean.new("Fini2", 700, "vermelho")

puts (jellyBean1.name + " " + jellyBean1.calories.to_s + " " + jellyBean1.healthy?.to_s + " " + jellyBean1.delicious?.to_s)
puts (jellyBean2.name + " " + jellyBean2.calories.to_s + " " + jellyBean2.healthy?.to_s + " " + jellyBean2.delicious?.to_s)
