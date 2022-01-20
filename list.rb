require_relative 'enumerable'

class MyList
  def initialize(*list)
    @list = list
  end

  include MyEnumerable
end
