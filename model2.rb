class Order
    attr_accessor :order_id, :customer, :driver
    @@all = []
    @@order_num = 0

    def initialize(customer, driver)
        @customer = customer
        @driver = driver
        @@order_num += 1
        @order_id = @@order_num
        @@all << self
    end

    def self.rating
        Customer.satisfy.sum / Customer.satisfy.size.to_f
    end

    def self.all
        @@all
    end
end