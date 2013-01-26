module TeamBlog
  module Concern
    module Permalink
      extend ActiveSupport::Concern

      included do
        validates :permalink, :presence => true, :format => /^[a-z][a-z0-9-]*$/, :uniqueness => true
      end

      module ClassMethods
        def find_by_id_or_permalink(value)
          where(["id = :value OR permalink = :value", { :value => value.downcase }]).first
        end
      end
    end
  end
end
