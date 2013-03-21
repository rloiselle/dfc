module Refinery
  module Testimonials
    class Testimonial < Refinery::Core::BaseModel
      self.table_name = 'refinery_testimonials'

      attr_accessible :name, :position

      acts_as_indexed :fields => [:name]

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
