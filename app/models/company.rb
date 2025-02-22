class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies


    # - `Company#give_freebie(dev, item_name, value)`
    # - takes a `dev` (an instance of the `Dev` class), an `item_name` (string), and a `value`
    #   as arguments, and creates a new `Freebie` instance associated with this
    # company and the given dev
    def give_freebie(dev, item_name, value)
        new = Freebie.create(dev_id: dev, item_name: item_name, value: value)
        self.freebies << new
    end

    # - `Company.oldest_company`
    # - returns the `Company` instance with the earliest founding year
    def self.oldest_company
        Company.order(founding_year: :desc).last
    end


end
