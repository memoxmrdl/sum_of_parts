require "minitest/autorun"

class PartsSumsTest < Minitest::Test
  def test_it_returns_part_sums_of_list_numbers
    assert_equal [0], parts_sums([])
    assert_equal [0, 0], parts_sums([0])
    assert_equal [21, 20, 18, 15, 11, 6, 0], parts_sums([1, 2, 3, 4, 5, 6])
    assert_equal [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0], parts_sums([744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358])
  end
end

def parts_sums(ls = [])
  @sums ||= []

  return (@sums, @sums = @sums << 0, nil)[0] if ls.count == 0

  @sums << ls.sum

  parts_sums(ls.drop(1))
end
