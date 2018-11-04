def self.find(selector, conditions="", *joins)
  sql = ["SELECT * FROM books"]
  joins.each do |join_table|
    sql << "LEFT OUTER JOIN #{join_table} ON"
    sql << "books.#{join_table.to_s.chap}_id"
    sql << " = #{join_table}.id"
  end
  sql << "WHERE #{conditions}" unless conditions.empty?
  sql << "LIMIT 1" if selector == :first
  connection.find(sql.join(" "))
end

class SearchCriteria
  attr_reader :author_id, :publisher_id, :isbn

  def initialize(author_id, publisher_id, isbn)
    @author_id = author_id
    @publisher_id = publisher_id
    @isbn = isbn
  end
end

# client code
criteria = SearchCriteria.new(5, 8, "0204")

# change the calling code to pass key-value paris

class SearchCriteria
  def initialize(params)
    @author_id = params[:author_id]
    @publisher_id = params[:publisher_id]
    @isbn = params[:isbn]
  end
end

criteria = SearchCriteria.new(author_id: 5, publisher_id: 8, isbn: '0204')
