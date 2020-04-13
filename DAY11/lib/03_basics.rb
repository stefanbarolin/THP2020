def who_is_bigger(a, b, c)
  if (a == nil || b == nil || c == nil)
    return ("nil detected")
  else
    max = [a, b, c].max
    if a == max
      return ("a is bigger")
    elsif b == max
      return ("b is bigger")
    elsif c == max
      return ("c is bigger")
    end
  end
end

def reverse_upcase_noLTA(string)
  return string.reverse.upcase.tr('L','').tr('T','').tr('A','')
end

def array_42(array)
  return array.include? (42)
end

def magic_array(array)
  ((array.flatten.uniq.reject {|x| x.digits.sum % 3 == 0}).sort).collect {|x| x*2}
end