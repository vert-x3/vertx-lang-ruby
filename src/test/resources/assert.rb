module Assert
  def self.fail(msg)
    raise 'the error'
  end
  def self.is_nil(actual)
    equals actual, nil
  end
  def self.is_not_nil(actual)
    not_equals actual, nil
  end
  def self.not_equals(actual, expected)
    if _equals actual, expected
      raise "Was expecting to have #{actual} != #{expected}"
    end
  end
  def self.equals(actual, expected)
    unless _equals actual, expected
      raise "Was expecting to have #{actual} == #{expected}"
    end
  end
  def self._equals(actual, expected)
    if expected.class == Float
      if (expected - actual).abs <= 0.001
        return true
      end
    else
      if actual == expected
        return true
      end
    end
  end
  def self.has_class(actual, expected_class)
    unless actual != nil && _equals(actual.class, expected_class)
      raise "Was expecting to have #{actual} to have type #{expected_class}"
    end
  end
  def self.is(actual, expected_type)
    unless actual != nil && actual.is_a?(expected_type)
      raise "Was expecting to have #{actual} to be instance of #{expected_type}"
    end
  end
  def self.argument_error(&callback)
    failed = false
    begin
      callback.call;
    rescue ArgumentError
      failed = true
    end
    equals(failed, true)
  end
end