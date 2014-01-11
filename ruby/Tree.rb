class Node
  attr_reader :val, :sum, :left_parent, :right_parent
  def initialize(val)
    @val = val
  end

  def left_parent=(p)
    @left_parent = p
    if @right_parent == nil || @right_parent.val < p.val
      @sum = @val + p.val
    else
      @sum = @val + @right_parent.val
    end
  end

  def right_parent=(p)
    @right_parent = p
    if @left_parent == nil || @left_parent.val < p.val
      @sum = @val + p.val
    else
      @sum = @val + @left_parent.val
    end
  end
end
