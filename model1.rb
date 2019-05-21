class Driver
    @@all = []
    attr_accessor :satisfaction
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
        satisfaction = 10
    end

    def driver_info
        my_driver = Order.all.select do |id|
            id.driver == self
        end
    end

    def orders
        self.driver_info.collect do |ord|
            ord.order_id
        end
    end


    def customer
        self.driver_info.collect do |ord|
            ord.customer.name
        end
    end

    def self.all
        @@all
    end
end