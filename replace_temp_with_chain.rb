# mock = Mock.new
# expectation = mock.expects(:a_method_name)
# expectation.with("arguments")
# expectation.return([1, :array])
#
# mock = Mock.new
# mock.expects(:a_method_name).with("arguments").return([1, :array])

class Select
  def options
    @options ||= []
  end

  def add_option(arg)
    options << arg
  end
end

select = Select.new
select.add_option(1999)
select.add_option(2000)
select.add_option(2001)

p select.inspect

# Return self from methods that you want to allow chaining from.

class Select
  def self.with_option(option)
    select = self.new
    select.options << option
    select
  end

  def add_option(arg)
    options << arg
    self
  end
end

Select.with_option(1999).add_option(2000).add_option(2001)

p select.inspect
