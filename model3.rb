class Customer
    attr_reader :name
    @@satisfy = []
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def orders
        my_orders = Order.all.select do |order_obj|
            order_obj.customer == self
        end
        my_orders.collect do |i|
            i.order_id
        end
    end

    def driver
        my_driver = Order.all.select do |ord|
            ord.customer == self
        end
        my_driver.collect do |id|
            id.driver.name
        end
    end

    def self.satisfy
        @@satisfy
    end

    def satisfaction(num)
        if num < 1
            num = 1
        elsif num > 10
            num = 10
        end
        @@satisfy << num
    end

    def self.all
        @@all
    end
end