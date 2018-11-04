class SearchCriteria
  def initialize(hash)
    @author_id = hash[:author_id]
    @publisher_id = hash[:publisher_id]
    @isbn = hash[:isbn]
  end
end

class SearchCriteria
  def self.hash_initialize(*attribute_names)
    defind_method :initialize do |*args|
      data = args.first || {}
      attribute_names.each do |attribute|
        instance_variable_set "@#{attribute}", data[attribute]
      end
    end
  end

  hash_initialize :author_id, :publisher_id, :isbn
end
